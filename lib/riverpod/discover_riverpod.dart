import 'package:flutter/material.dart';
import 'package:looper_app/model/current.dart';
import 'package:looper_app/model/discover_currents_model.dart';

class DiscoverRiverpod extends ChangeNotifier {
  DiscoverCurrentsModel newTrends =
      DiscoverCurrentsModel(currentTitle: 'En Yeni Akımlar', currents: [
    Current(current: 'Kahve mi çay mı?', count: 12.6),
    Current(current: 'Kahve mi çay mı?', count: 12.6),
    Current(current: 'Kahve mi çay mı?', count: 12.6),
  ]);

  DiscoverCurrentsModel popularTrends =
      DiscoverCurrentsModel(currentTitle: 'Popüler Akımlar', currents: [
    Current(current: 'Kahve mi çay mı?', count: 12.6),
    Current(current: 'Mor mu Kırmızı mı?', count: 12.6),
    Current(current: 'Kahve mi çay mı?', count: 12.6),
    Current(current: 'Mor mu Kırmızı mı?', count: 12.6),
    Current(current: 'Kahve mi çay mı?', count: 12.6),
    Current(current: 'Mor mu Kırmızı mı?', count: 12.6),
  ]);
}
