import 'package:testes_luisin/domain/entity/pukemon.dart';

abstract class IPukemonRepository {
  Future<Pukemon?> getPukemon();
}
