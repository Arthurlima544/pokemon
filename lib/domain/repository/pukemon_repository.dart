import 'package:dartz/dartz.dart';
import 'package:testes_luisin/domain/entity/pukemon.dart';
import 'package:testes_luisin/utils/failures.dart';

abstract class IPukemonRepository {
  Future<Either<Failure, Pukemon>> getPukemon();
}
