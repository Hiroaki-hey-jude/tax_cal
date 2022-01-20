import 'package:tax/data/tabaco.dart';
import 'package:tax/data/tax_data.dart';
import 'dart:math';
import 'package:tax/screen/tabaco_screen.dart';

class TabacoLogic {
  final Tabaco _tabaco = Tabaco();
  TaxData _taxData = const TaxData(
    consumptionTax: 0,
    tabacoSpecialTax: 0,
    stateTabacoTax: 0,
    countryTabacoTax: 0,
    allTabacoTax: 0,
  );

  get taxData => _taxData;

  void calConsumptionTax() {
    _taxData = _taxData.copyWith(
        consumptionTax: ((_tabaco.price! / _tabaco.quantity!) * 0.09091379) *
            _tabaco.quantity!);
    print(_taxData.consumptionTax);
  }

  void calTabacoSpecialTax() {
    _taxData = _taxData.copyWith(
        tabacoSpecialTax: ((_tabaco.price! / _tabaco.quantity!) * 0.02827586) *
            _tabaco.quantity!);
  }

  void calStateTabacoTax() {
    _taxData = _taxData.copyWith(
        stateTabacoTax: ((_tabaco.price! / _tabaco.quantity!) * 0.26282759) *
            _tabaco.quantity!);
  }

  void calCountryTabacoTax() {
    _taxData = _taxData.copyWith(
        countryTabacoTax: ((_tabaco.price! / _tabaco.quantity!) * 0.23455172) *
            _tabaco.quantity!);
  }

  void calAllTabacoTax() {
    _taxData = _taxData.copyWith(
        allTabacoTax: (((_tabaco.price! / _tabaco.quantity!) * 0.09091379) *
                _tabaco.quantity!) +
            (((_tabaco.price! / _tabaco.quantity!) * 0.02827586) *
                _tabaco.quantity!) +
            (((_tabaco.price! / _tabaco.quantity!) * 0.26282759) *
                _tabaco.quantity!) +
            ((_tabaco.price! / _tabaco.quantity!) * 0.23455172) *
                _tabaco.quantity!);
  }

  void reset() {
    _taxData = const TaxData(
      consumptionTax: 0,
      tabacoSpecialTax: 0,
      stateTabacoTax: 0,
      countryTabacoTax: 0,
      allTabacoTax: 0,
    );
  }

  void setPriceLogic(double a) {
    _tabaco.setPrice(a);
  }

  void setQuantityLogic(double a) {
    _tabaco.setQuantity(a);
  }
}
