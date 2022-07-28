import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:student_portal_app/blocs/app/push_notification_model.dart';

@immutable
abstract class AppState extends Equatable {
  const AppState([List props = const []]);
}

class InitialAppState extends AppState {
  @override
  List<Object> get props => [];
}

class NotificationPage extends AppState {
  final PushNotificationModel data;

  NotificationPage(this.data) : super([data]);

  @override
  List<Object> get props => [data];
}

class StateSessionTimeoutPage extends AppState {
  @override
  List<Object> get props => [];
}
