import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkUtils {
  NetworkUtils._();

  static Future<bool> isConnected() async {
    final List<ConnectivityResult> connectivityResult = await (Connectivity().checkConnectivity());

    if(connectivityResult.contains(ConnectivityResult.mobile)){
      return true;
    }
    else if (connectivityResult.contains(ConnectivityResult.wifi)){
      return true;
    }
    else if (connectivityResult.contains(ConnectivityResult.ethernet)){
      return true;
    }
    else if (connectivityResult.contains(ConnectivityResult.vpn)){
      return true;
    }
    else if (connectivityResult.contains(ConnectivityResult.bluetooth)){
      return true;
    }
    else if (connectivityResult.contains(ConnectivityResult.other)){
      // Vpn connection active
      return true;
    }
    else if (connectivityResult.contains(ConnectivityResult.none)){
      // No available network
      return false;
    }
    else{
      return false;
    }
  }
}
