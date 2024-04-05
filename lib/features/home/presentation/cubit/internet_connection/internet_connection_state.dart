part of 'internet_connection_cubit.dart';

enum ConnectivityStatus {
  connected,
  disconnected;
}

class InternetStatus {
  final ConnectivityStatus status;

  InternetStatus({required this.status});
}
