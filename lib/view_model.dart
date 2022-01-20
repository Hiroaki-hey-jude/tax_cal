import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tax/logic/tabaco_logic.dart';
import 'package:tax/provider.dart';

class ViewModel{
  TabacoLogic _tabacoLogic = TabacoLogic();
  late WidgetRef _ref;

  void setRef(WidgetRef ref){
    this._ref = ref;
  }

  get consumptionTax => _ref.watch(taxDataProvider.state).state.consumptionTax;
  get tabacoSpecialTax => _ref.watch(taxDataProvider.state).state.tabacoSpecialTax;
  get stateTabacoTax => _ref.watch(taxDataProvider.state).state.stateTabacoTax;
  get countryTabacoTax => _ref.watch(taxDataProvider.state).state.countryTabacoTax;
  get allTabacoTax => _ref.watch(taxDataProvider.state).state.allTabacoTax;

  void onCalTabacoTax() {
    print('こんにちは');
    _tabacoLogic.calConsumptionTax();
    _tabacoLogic.calTabacoSpecialTax();
    _tabacoLogic.calStateTabacoTax();
    _tabacoLogic.calCountryTabacoTax();
    _tabacoLogic.calAllTabacoTax();
    print('hello');
    _ref.watch(taxDataProvider.state).state = _tabacoLogic.taxData;
    // _ref.watch(taxDataProvider.state).state.consumptionTax.toStringAsFixed(2);
    // _ref.watch(taxDataProvider.state).state.tabacoSpecialTax.toStringAsFixed(2);
    // _ref.watch(taxDataProvider.state).state.stateTabacoTax.toStringAsFixed(2);
    // _ref.watch(taxDataProvider.state).state.countryTabacoTax.toStringAsFixed(2);
    print('${_ref.watch(taxDataProvider.state).state.consumptionTax} ここには何が入っているんだ！！');
  }

  void onReset() {
    _tabacoLogic.reset();
    _ref.watch(taxDataProvider.state).state = _tabacoLogic.taxData;
  }

  void onSetPrice(double a) {
    print('${a} これはview model');
    _tabacoLogic.setPriceLogic(a);
  }

  void onSetQuantity(double a){
    _tabacoLogic.setQuantityLogic(a);
  }

}