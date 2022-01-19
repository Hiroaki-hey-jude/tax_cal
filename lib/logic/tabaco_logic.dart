import 'package:tax/data/tabaco.dart';
import 'package:tax/data/tax_data.dart';
import 'package:tax/screen/tax_screen.dart';

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
    print('${_tabaco.price} what is in this');
    _taxData = _taxData.copyWith(consumptionTax: (_tabaco.price!*0.09091379)/_tabaco.quantity!);
    print(_taxData.consumptionTax);
  }

  void calTabacoSpecialTax() {
    print('special tax');
    _taxData = _taxData.copyWith(tabacoSpecialTax: (_tabaco.price!*0.02827586)/_tabaco.quantity!);
  }

  void calStateTabacoTax() {
    print('state tax');
    _taxData = _taxData.copyWith(stateTabacoTax: (_tabaco.price!*0.26282759)/_tabaco.quantity!);
  }

  void calCountryTabacoTax() {
    print('country tax, ここは？！');
    _taxData = _taxData.copyWith(countryTabacoTax: (_tabaco.price!*0.23455172)/_tabaco.quantity!);
  }

  void reset() {
    _taxData = const TaxData(
        consumptionTax: 0,
        tabacoSpecialTax: 0,
        stateTabacoTax: 0,
        countryTabacoTax: 0,
    );
  }

  void setPriceLogic(double a) {
    print('${a}　これはlogic');
    _tabaco.setPrice(a);
  }

  void setQuantityLogic(double a){
    _tabaco.setQuantity(a);
  }

}