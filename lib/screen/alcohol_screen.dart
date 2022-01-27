import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share/share.dart';
import 'package:tax/const/color.dart';
import 'package:tax/view_model.dart';

class AlcoholScreen extends ConsumerStatefulWidget {
  const AlcoholScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<AlcoholScreen> createState() => _AlcoholScreenState();
}

class _AlcoholScreenState extends ConsumerState<AlcoholScreen> {
  final ViewModel _viewModel = ViewModel();
  final _formKey = GlobalKey<FormState>();
  double? beer;
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
            'ビール',
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
                                hintText: '何mlでしたか', // 入力ヒント
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
                                return '何mlか入力して下さい';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _viewModel.onSetMl(double.parse(value!));
                              beer = double.parse(value);
                            },
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 40, 50, 10),
                        child: Text('ml',style: TextStyle(
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
                        _viewModel.onCalBeerTax();
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
                        _viewModel.beerTax.toStringAsFixed(3) == '0.000'? const Text('')
                            :Text('発泡性酒類（ビール）税',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: color1,
                        ),),
                        _viewModel.beerTax.toStringAsFixed(3) == '0.000'? const Text('')
                            : Text('${_viewModel.beerTax.toStringAsFixed(0)}円',
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
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.share),
          onPressed: () {
            if(_formKey.currentState!.validate()){
              Share.share(
                  '${beer!.toStringAsFixed(0)}mlのビールで'
                      '${_viewModel.beerTax.toStringAsFixed(0)}円の酒税がかかります！'
              );
            }
          },
        ),
      ),
    );
  }
}