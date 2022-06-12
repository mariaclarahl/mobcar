class Car {
  final String id;
  final String? imagem;
  final String marca;
  final String modelo;
  final String ano;
  final String valor;

  const Car({
    required this.id,
    required this.imagem,
    required this.marca,
    required this.modelo,
    required this.ano,
    required this.valor,
  });

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
      id: json['_codigo'] as String,
      imagem: json['imagem'] as String,
      marca: json['nome'] as String,
      modelo: json['modelo'] as String,
      ano: json['ano'] as String,
      valor: json['valor'] as String,
    );
  }

  @override
  String toString() {
    return 'Car{codigo: $id, imagem: $imagem, nome: $marca, modelo: $modelo, marca: $marca, ano: $ano}';
  }
}
