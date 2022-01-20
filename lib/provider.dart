import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tax/data/tax_data.dart';

final taxDataProvider = StateProvider<TaxData>(
        (ref) => const TaxData(
            consumptionTax: 0,
            tabacoSpecialTax: 0,
            stateTabacoTax: 0,
            countryTabacoTax: 0,
            allTabacoTax: 0,
        ),
);