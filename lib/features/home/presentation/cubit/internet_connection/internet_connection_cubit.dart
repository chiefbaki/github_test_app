import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

part 'internet_connection_state.dart';

class InternetConnectionCubit extends Cubit<InternetStatus> {
  InternetConnectionCubit()
      : super(InternetStatus(status: ConnectivityStatus.disconnected));

  Future<void> checkConnectivity() async {
    final connectivityStatus = await Connectivity().checkConnectivity();
    _updateConnectivityStatus(connectivityStatus);
  }

  void _updateConnectivityStatus(List<ConnectivityResult> result) {
    if (result.contains(ConnectivityResult.none)) {
      emit(InternetStatus(status: ConnectivityStatus.disconnected));
    } else {
      emit(InternetStatus(status: ConnectivityStatus.connected));
    }
  }

  late StreamSubscription<List<ConnectivityResult?>> _subscription;

  void trackConnectivityChange() {
    _subscription = Connectivity().onConnectivityChanged.listen((result) {
      _updateConnectivityStatus(result);
    });
  }

  void dispose(){
    _subscription.cancel();
  }
}
