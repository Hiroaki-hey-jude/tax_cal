import 'package:tax/data/beer/beer.dart';
import 'package:tax/data/beer/beer_data.dart';

class BeerLogic{
  Beer _beer = Beer();
  BeerData _beerData = const BeerData(
      beerTax: 0,
      ml: 0,
  );

  get beerData => _beerData;

  void calBeerTax() {
    _beerData = _beerData.copyWith(
      beerTax: _beer.ml! * 0.2
    );
  }

  void reset() {
    _beerData = const BeerData(
        beerTax: 0,
        ml: 0,
    );
  }

  void setMl(double a) {
    _beer.setMl(a);
  }
}
