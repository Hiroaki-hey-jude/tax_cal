import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tax/logic/beer_logic.dart';
import 'package:tax/logic/stuff_logic.dart';
import 'package:tax/logic/tabaco_logic.dart';
import 'package:tax/provider.dart';

class ViewModel{
  TabacoLogic _tabacoLogic = TabacoLogic();
  BeerLogic _beerLogic = BeerLogic();
  StuffLogic _stuffLogic = StuffLogic();
  late WidgetRef _ref;

  void setRef(WidgetRef ref){
    this._ref = ref;
  }

  get consumptionTax => _ref.watch(taxDataProvider.state).state.consumptionTax;
  get tabacoSpecialTax => _ref.watch(taxDataProvider.state).state.tabacoSpecialTax;
  get stateTabacoTax => _ref.watch(taxDataProvider.state).state.stateTabacoTax;
  get countryTabacoTax => _ref.watch(taxDataProvider.state).state.countryTabacoTax;
  get allTabacoTax => _ref.watch(taxDataProvider.state).state.allTabacoTax;

  get beerMl => _ref.watch(beerDataProvider.state).state.ml;
  get beerTax => _ref.watch(beerDataProvider.state).state.beerTax;

  get stuffConsumptionTax => _ref.watch(stuffDataProvider.state).state.stuffConsumptionTax;
  get stuffYen => _ref.watch(stuffDataProvider.state).state.yen;

  void onCalStuffConsumptionTax() {
    _stuffLogic.calStuffConsumptionTax();
    _ref.watch(stuffDataProvider.state).state = _stuffLogic.stuffData;
  }

  void onCalBeerTax() {
    _beerLogic.calBeerTax();
    _ref.watch(beerDataProvider.state).state = _beerLogic.beerData;
  }

  void onCalTabacoTax() {
    _tabacoLogic.calConsumptionTax();
    _tabacoLogic.calTabacoSpecialTax();
    _tabacoLogic.calStateTabacoTax();
    _tabacoLogic.calCountryTabacoTax();
    _tabacoLogic.calAllTabacoTax();
    _ref.watch(taxDataProvider.state).state = _tabacoLogic.taxData;
    print('${_ref.watch(taxDataProvider.state).state.consumptionTax} ここには何が入っているんだ！！');
  }

  void onReset() {
    _tabacoLogic.reset();
    _ref.watch(taxDataProvider.state).state = _tabacoLogic.taxData;
  }

  void onSetPrice(double a) {
    _tabacoLogic.setPriceLogic(a);
  }

  void onSetQuantity(double a){
    _tabacoLogic.setQuantityLogic(a);
  }

  void onSetMl(double a) {
    _beerLogic.setMl(a);
  }

  void onSetYen(double a){
    _stuffLogic.setYen(a);
  }

}