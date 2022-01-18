import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tax/logic/tabaco_logic.dart';
import 'package:tax/provider.dart';

class ViewModel{
  TabacoLogic _tabacoLogic = TabacoLogic();
  late WidgetRef _ref;

  void setRef(WidgetRef ref){
    this._ref = ref;
  }

  get consumptionTax => _ref.watch(taxDataProvider.state).state.consumptionTax.toString();
  get tabacoSpecialTax => _ref.watch(taxDataProvider.state).state.tabacoSpecialTax.toString();
  get stateTabacoTax => _ref.watch(taxDataProvider.state).state.stateTabacoTax.toString();
  get countryTabacoTax => _ref.watch(taxDataProvider.state).state.countryTabacoTax.toString();

  void onCalTabacoTax() {
    _tabacoLogic.calConsumptionTax();
    _tabacoLogic.calTabacoSpecialTax();
    _tabacoLogic.calStateTabacoTax();
    _tabacoLogic.calStateTabacoTax();
    _ref.watch(taxDataProvider.state).state = _tabacoLogic.taxData();
  }

  void onReset() {
    _tabacoLogic.reset();
    _ref.watch(taxDataProvider.state).state = _tabacoLogic.taxData();
  }

}