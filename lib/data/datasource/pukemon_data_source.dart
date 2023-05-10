import 'package:dio/dio.dart';

class PukemonDataSource {
  final Dio client;

  PukemonDataSource({required this.client});
  Future<Response> getPukemon() async {
    return await client.get('https://pokeapi.co/api/v2/pokemon/ditto');
  }
}
