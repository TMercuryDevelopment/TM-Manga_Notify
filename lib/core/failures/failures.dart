import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {}

abstract class InternetFailure extends Failure {}

abstract class ServiceFailure extends Failure {}
