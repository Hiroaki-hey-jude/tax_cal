import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tax/const/color.dart';
import 'package:tax/data/tabaco.dart';
import 'package:tax/logic/tabaco_logic.dart';
import 'package:tax/view_model.dart';

class TaxScreen extends ConsumerStatefulWidget {
  double price = 0;
  double quantity = 0;
  TaxScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<TaxScreen> createState() => _TaxScreenState();
}

class _TaxScreenState extends ConsumerState<TaxScreen> {
  ViewModel _viewModel = ViewModel();
  final _formKey = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  final myController = TextEditingController();


  @override
  void initState(){
    super.initState();
    _viewModel.setRef(ref);
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final FocusScopeNode currentScope = FocusScope.of(context);
        if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
          FocusManager.instance.primaryFocus!.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: color1,
          title: const Text(
            'タバコ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: [
            Form(
                key: _formKey,
                child: Container(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(45, 40, 10, 10),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                                hintText: 'タバコの金額を入力して下さい', // 入力ヒント
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                  color: color1,
                                )),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: color1,
                                  ),
                                )),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return '何円か入力して下さい';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              // _tabaco.price = double.parse(value!);
                              // print(_tabaco.price);
                              _viewModel.onSetPrice(double.parse(value!));
                              //widget.price = double.parse(value!);
                              //print('${_tabaco.price} これはtax screen');
                            },
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 40, 50, 10),
                        child: Text('円',style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                    ],
                  ),
                )),
            Form(
                key: _formKey2,
                child: Container(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(45, 15, 10, 10),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                                hintText: '個数を入力して下さい', // 入力ヒント
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: color1,
                                    )),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: color1,
                                  ),
                                ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return '何箱か入力して下さい';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              // _tabaco.quantity = double.parse(value!);
                              // print(_tabaco.quantity);
                              //print(_viewModel.onSetPrice(double.parse(value!)));
                              _viewModel.onSetQuantity(double.parse(value!));
                              //widget.quantity = double.parse(value!);
                              //_tabaco.price;
                            },
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 40, 50, 10),
                        child: Text('箱', style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                    ],
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: ElevatedButton(
                      onPressed: () {
                        _formKey.currentState!.reset();
                        _formKey2.currentState!.reset();
                        //_viewModel.onReset();
                      },
                      child: const Text('クリア'),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // 入力データが正常な場合の処理
                        this._formKey.currentState!.save();
                        this._formKey2.currentState!.save();
                        //_tabacoLogic.calConsumptionTax();
                        _viewModel.onCalTabacoTax();
                        //print(_viewModel.consumptionTax);
                      }
                    },
                    child: const Text('計算'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  _viewModel.consumptionTax.toStringAsFixed(3) == '0.000'? Text('')
                      :Text('消費税',style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                  _viewModel.consumptionTax.toStringAsFixed(3) == '0.000'? Text('')
                      : Text('${_viewModel.consumptionTax.toStringAsFixed(3)}円'),

                  _viewModel.tabacoSpecialTax.toStringAsFixed(3) == '0.000'? Text('')
                      :Text('たばこ特別税', style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                  _viewModel.tabacoSpecialTax.toStringAsFixed(3) == '0.000'? Text('')
                      : Text('${_viewModel.tabacoSpecialTax.toStringAsFixed(3)}円'),

                  _viewModel.stateTabacoTax.toStringAsFixed(3) == '0.000'? Text('')
                      :Text('地方タバコ税', style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                  _viewModel.stateTabacoTax.toStringAsFixed(3) == '0.000'? Text('')
                      : Text('${_viewModel.stateTabacoTax.toStringAsFixed(3)}円'),

                  _viewModel.countryTabacoTax.toStringAsFixed(3) == '0.000'? Text('')
                      : Text('国タバコ税', style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                  _viewModel.countryTabacoTax.toStringAsFixed(3) == '0.000'? Text('')
                      : Text('${_viewModel.countryTabacoTax.toStringAsFixed(3)}円'),
                ],
              ),
            ),

          ],
        ),

      ),
    );
  }
}
