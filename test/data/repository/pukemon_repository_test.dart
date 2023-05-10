import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:testes_luisin/data/datasource/pukemon_data_source.dart';
import 'package:testes_luisin/data/repository/pukemon_repository.dart';

import 'pukemon_repository_test.mocks.dart';

@GenerateMocks([PukemonDataSource])
void main() {
  late PukemonRepository repository;
  late MockPukemonDataSource mockPukemonDataSource;

  setUp(() {
    mockPukemonDataSource = MockPukemonDataSource();
    repository = PukemonRepository(mockPukemonDataSource);
  });
  test('pukemon repository ...', () async {
    ///arranje
    final fakeJson = await rootBundle.loadString('assets/json/test.json');
    Response fakeResponse = Response(
      requestOptions: RequestOptions(path: "application/json"),
      statusCode: 200,
      data: fakeJson,
    );

    ///act
    when(mockPukemonDataSource.getPukemon())
        .thenAnswer((realInvocation) async => fakeResponse);

    final result = repository.getPukemon();

    ///assert
  });
}
