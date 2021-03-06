import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {}

class LoginButtonPressed extends LoginEvent {
  final List<int> pin;

  LoginButtonPressed({@required this.pin});

  @override
  String toString() => 'LoginButtonPressed';

  @override
  List<Object> get props => pin;
}
