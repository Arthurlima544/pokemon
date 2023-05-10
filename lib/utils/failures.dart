import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  const Failure(this.message);

  @override
  get props => [message];
}

class GenericFailure extends Failure {
  const GenericFailure(super.message);
}
