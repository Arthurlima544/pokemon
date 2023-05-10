import 'package:dartz/dartz.dart';
import 'package:testes_luisin/domain/entity/pukemon.dart';
import 'package:testes_luisin/domain/repository/pukemon_repository.dart';
import 'package:testes_luisin/utils/failures.dart';

class GetPukemon {
  final IPukemonRepository _repository;

  GetPukemon(this._repository);

  Future<Either<Failure, Pukemon>> call() async {
    return await _repository.getPukemon();
  }
}
