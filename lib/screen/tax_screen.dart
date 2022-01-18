import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tax/const/color.dart';
import 'package:tax/data/tabaco.dart';
import 'package:tax/logic/tabaco_logic.dart';
import 'package:tax/view_model.dart';

class TaxScreen extends ConsumerStatefulWidget {
  const TaxScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<TaxScreen> createState() => _TaxScreenState();
}

class _TaxScreenState extends ConsumerState<TaxScreen> {
  Tabaco _tabaco = Tabaco();
  ViewModel _viewModel = ViewModel();
  TabacoLogic _tabacoLogic = TabacoLogic();
  final _formKey = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  final myController = TextEditingController();
  // int price = 0;
  // int quantity = 0;

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
          title: Text(
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
                          padding: const EdgeInsets.fromLTRB(45, 25, 10, 10),
                          child: TextFormField(
                            controller: myController,
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
                              _tabaco.price = double.parse(value!);
                              print(_tabaco.price);
                            },
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 25, 50, 10),
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
                              _tabaco.quantity = double.parse(value!);
                              print(_tabaco.quantity);
                            },
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 25, 50, 10),
                        child: Text('個', style: TextStyle(
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
                        _viewModel.onReset();
                      },
                      child: Text('クリア'),
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
                        _tabacoLogic.calConsumptionTax();
                        //_viewModel.onCalTabacoTax();
                        print(_viewModel.consumptionTax);
                      }
                    },
                    child: Text('計算'),
                  ),
                ),
              ],
            ),
            // Row(
            //   children: [
            //     Text('消費税　9.1%',style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //     ),),
            //     SizedBox(width: 5),
            //     Text(_viewModel.consumptionTax),
            //   ],
            // )
          ],
        ),

      ),
    );
  }
}
