// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ModeloModel {
  final String codigo;
  final String nome;

  ModeloModel({
    required this.codigo,
    required this.nome,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codigo': codigo,
      'nome': nome,
    };
  }

  factory ModeloModel.fromMap(Map<String, dynamic> map) {
    return ModeloModel(
      codigo: map['codigo'] as String,
      nome: map['nome'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ModeloModel.fromJson(String source) =>
      ModeloModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ModeloModel && other.codigo == codigo && other.nome == nome;
  }

  @override
  int get hashCode => codigo.hashCode ^ nome.hashCode;
}
