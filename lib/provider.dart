import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tax/data/stuff/stuff_data.dart';
import 'package:tax/data/tabaco/tax_data.dart';

import 'data/beer/beer_data.dart';

final taxDataProvider = StateProvider<TaxData>(
        (ref) => const TaxData(
            consumptionTax: 0,
            tabacoSpecialTax: 0,
            stateTabacoTax: 0,
            countryTabacoTax: 0,
            allTabacoTax: 0,
        ),
);

final beerDataProvider = StateProvider<BeerData>(
    (ref) => const BeerData(
        beerTax: 0,
        ml: 0,
    )
);

final stuffDataProvider = StateProvider<StuffData>(
    (ref) => const StuffData(
        stuffConsumptionTax: 0,
        yen: 0,
    )
);