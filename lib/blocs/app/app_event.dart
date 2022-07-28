import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:student_portal_app/blocs/app/push_notification_model.dart';

@immutable
abstract class AppEvent extends Equatable {
  const AppEvent([List props = const []]);
}

class RedirectToNotifications extends AppEvent {
  final PushNotificationModel data;

  const RedirectToNotifications(this.data);

  @override
  List<Object> get props => [data];
}

class SessionTimeout extends AppEvent {
  @override
  List<Object> get props => [];
}

class Nop extends AppEvent {
  @override
  List<Object> get props => [];
}
class UpdateReadNotification extends AppEvent {
  final int notificationId;

  UpdateReadNotification(this.notificationId) : super([notificationId]);

  @override
  List<Object> get props => [notificationId];
}
