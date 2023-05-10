import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:testes_luisin/domain/entity/pukemon.dart';
import 'package:testes_luisin/domain/repository/pukemon_repository.dart';
import 'package:testes_luisin/domain/usecase/get_pukemon.dart';

import 'get_pukemon_test.mocks.dart';

@GenerateMocks([IPukemonRepository])
void main() {
  late GetPukemon usecase;
  late MockIPukemonRepository pukemonRepository;

  setUp(() {
    pukemonRepository = MockIPukemonRepository();
    usecase = GetPukemon(pukemonRepository);
  });
  test('get pukemon ...', () async {
    ///arraje

    ///act
    when(pukemonRepository.getPokemon()).thenAnswer((realInvocation) async =>
        const Pukemon(nome: "ditto", id: "132", tipo: Tipo.normal));

    ///assert
  });
}
