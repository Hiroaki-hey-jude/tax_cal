import 'package:tax/data/stuff/stuff.dart';
import 'package:tax/data/stuff/stuff_data.dart';

class StuffLogic{
  final Stuff _stuff = Stuff();
  StuffData _stuffData = const StuffData(
      stuffConsumptionTax: 0,
      yen: 0,
  );

  get stuffData => _stuffData;

  void calStuffConsumptionTax() {
    _stuffData = _stuffData.copyWith(
        stuffConsumptionTax: _stuff.yen!*0.1,
    );
  }

  void reset() {
    _stuffData = const StuffData(
      stuffConsumptionTax: 0,
      yen: 0,
    );
  }

  void setYen(double a) {
    _stuff.setYen(a);
  }
}