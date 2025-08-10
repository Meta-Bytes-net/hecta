import 'package:injectable/injectable.dart';

import '../networking/network_info/network_info.dart';
import '../networking/network_info/network_info_impl.dart';

@module
abstract class DataModule {
  @lazySingleton
  NetworkInfo provideNetworkInfo() => NetworkInfoImpl();
}
