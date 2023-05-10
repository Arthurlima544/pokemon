import 'package:testes_luisin/domain/entity/pukemon.dart';

class PukemonAdapter {
  const PukemonAdapter._();

  //TODO: criar teste do adapter
  static Pukemon fromJson(Map<String, dynamic> json) {
    return Pukemon(
      nome: json["name"],
      id: json["id"].toString(),
      tipo: tipoAdapter(json["type"]),
    );
  }
}

Tipo tipoAdapter(List<Map<String, dynamic>> type) {
  final tipo = type[0]["type"]["name"];
  if (tipo == Tipo.normal.name) {
    return Tipo.normal;
  }
  throw Exception();
}
