import 'package:equatable/equatable.dart';

enum Tipo { normal }

class Pukemon extends Equatable {
  final String nome;
  final String id;
  final Tipo tipo;

  const Pukemon({required this.nome, required this.id, required this.tipo});

  @override
  List<Object?> get props => [id, nome, tipo];
}
