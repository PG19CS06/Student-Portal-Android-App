import 'package:equatable/equatable.dart';

class DataOrException<T> {
  final T? data;
  final MyException? exception;
  final String? message;

  bool get success => exception == null;

  DataOrException(this.data, this.exception, this.message);
}

abstract class MyException extends Equatable {
  const MyException([List props = const []]);
}

class ApiError extends MyException {
  @override
  List<Object> get props => [];
}

class NoInternet extends MyException {
  @override
  List<Object> get props => [];
}
