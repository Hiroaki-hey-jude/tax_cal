import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tax/const/color.dart';

class AlcoholScreen extends ConsumerStatefulWidget {
  const AlcoholScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<AlcoholScreen> createState() => _AlcoholScreenState();
}

class _AlcoholScreenState extends ConsumerState<AlcoholScreen> {
  final _formKey = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
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
          ],
        ),
      ),
    );
  }
}
