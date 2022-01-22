import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tax/const/color.dart';
import 'package:tax/view_model.dart';

class TaxScreen extends ConsumerStatefulWidget {
  double price = 0;
  double quantity = 0;
  TaxScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<TaxScreen> createState() => _TaxScreenState();
}

class _TaxScreenState extends ConsumerState<TaxScreen> {
  final ViewModel _viewModel = ViewModel();
  final _formKey = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  final focusNode = FocusNode();
  double? price;


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
                                hintText: '総額いくらでしたか', // 入力ヒント
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
                              _viewModel.onSetPrice(double.parse(value!));
                              price = double.parse(value);
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
                                hintText: '何箱買いましたか', // 入力ヒント
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
                              _viewModel.onSetQuantity(double.parse(value!));
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
                        _viewModel.onCalTabacoTax();
                        FocusManager.instance.primaryFocus!.unfocus();
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
                  Container(
                    child: Column(
                      children: [
                        _viewModel.consumptionTax.toStringAsFixed(3) == '0.000'? const Text('')
                            :Text('消費税',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: color1,
                        ),),
                        _viewModel.consumptionTax.toStringAsFixed(3) == '0.000'? const Text('')
                            : Text('${_viewModel.consumptionTax.toStringAsFixed(3)}円',
                          style: const TextStyle(
                            fontSize: 20,
                          ),),
                      ],
                    ),
                  ),

                  Container(
                    child: Column(
                      children: [
                        _viewModel.tabacoSpecialTax.toStringAsFixed(3) == '0.000'? const Text('')
                            :Text('たばこ特別税', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: color1,
                        ),),
                        _viewModel.tabacoSpecialTax.toStringAsFixed(3) == '0.000'? const Text('')
                            : Text('${_viewModel.tabacoSpecialTax.toStringAsFixed(3)}円',
                        style: const TextStyle(
                          fontSize: 20,
                        ),),
                      ],
                    ),
                  ),

                  Container(
                    child: Column(
                      children: [
                        _viewModel.stateTabacoTax.toStringAsFixed(3) == '0.000'? const Text('')
                            :Text('地方タバコ税', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: color1,
                        ),),
                        _viewModel.stateTabacoTax.toStringAsFixed(3) == '0.000'? const Text('')
                            : Text('${_viewModel.stateTabacoTax.toStringAsFixed(3)}円',
                        style: const TextStyle(
                          fontSize: 20,
                        ),),
                      ],
                    ),
                  ),

                  Container(
                    child: Column(
                      children: [
                        _viewModel.countryTabacoTax.toStringAsFixed(3) == '0.000'? const Text('')
                            : Text('国タバコ税', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: color1,
                        ),),
                        _viewModel.countryTabacoTax.toStringAsFixed(3) == '0.000'? const Text('')
                            : Text('${_viewModel.countryTabacoTax.toStringAsFixed(3)}円',
                        style: const TextStyle(
                          fontSize: 20,
                        ),),
                      ],
                    )
                  ),

                  Container(
                    child: Column(
                      children: [
                        _viewModel.allTabacoTax.toStringAsFixed(3) == '0.000'? const Text('')
                            : Text('総額', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: color1,
                        ),),
                        _viewModel.allTabacoTax.toStringAsFixed(3) == '0.000'? const Text('')
                            : Text('${_viewModel.allTabacoTax.toStringAsFixed(3)}円/${price}円が税金です',
                        style: const TextStyle(
                          fontSize: 20,
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
