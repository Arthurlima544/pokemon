import 'package:flutter_test/flutter_test.dart';
import 'package:testes_luisin/domain/entity/pukemon.dart';

void main() {
  test('pukemon ...', () {
    Pukemon espectedPukemon =
        const Pukemon(nome: "ditto", id: "132", tipo: Tipo.normal);
    Pukemon pukemon =
        const Pukemon(nome: "ditto", id: "132", tipo: Tipo.normal);

    expect(pukemon, equals(espectedPukemon));
  });
}
