import 'package:tax/data/tabaco.dart';
import 'package:tax/data/tax_data.dart';

class TabacoLogic{
  final Tabaco _tabaco = Tabaco();
  TaxData _taxData = const TaxData(
      consumptionTax: 0,
      tabacoSpecialTax: 0,
      stateTabacoTax: 0,
      countryTabacoTax: 0,
  );

  get taxData => _taxData;

  void calConsumptionTax() {
    print(_tabaco.price);
    print('これは生きてるのか');
    _taxData = _taxData.copyWith(consumptionTax: (_tabaco.price!*0.091)/_tabaco.quantity!);
  }

  void calTabacoSpecialTax() {
    _taxData = _taxData.copyWith(tabacoSpecialTax: (_tabaco.price!*0.028)/_tabaco.quantity!);
  }

  void calStateTabacoTax() {
    _taxData = _taxData.copyWith(stateTabacoTax: (_tabaco.price!*0.263)/_tabaco.quantity!);
  }

  void calCountryTabacoTax() {
    _taxData = _taxData.copyWith(countryTabacoTax: (_tabaco.price!*0.235)/_tabaco.quantity!);
  }

  void reset() {
    _taxData = const TaxData(
        consumptionTax: 0,
        tabacoSpecialTax: 0,
        stateTabacoTax: 0,
        countryTabacoTax: 0,
    );
  }

}