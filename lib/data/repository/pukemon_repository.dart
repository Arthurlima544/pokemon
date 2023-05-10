import 'package:testes_luisin/data/datasource/pukemon_data_source.dart';
import 'package:testes_luisin/domain/entity/pukemon.dart';
import 'package:dartz/dartz.dart';
import 'package:testes_luisin/domain/repository/pukemon_repository.dart';
import 'package:testes_luisin/utils/failures.dart';

class PukemonRepository implements IPukemonRepository {
  final PukemonDataSource _dataSource;

  PukemonRepository(this._dataSource);
  @override
  Future<Either<Failure, Pukemon>> getPukemon() async {
    try {
      final response = await _dataSource.getPukemon();
      final body = response.data;
      return Right(pukemon);
    } catch (e) {
      return const Left(GenericFailure(""));
    }
  }
}
