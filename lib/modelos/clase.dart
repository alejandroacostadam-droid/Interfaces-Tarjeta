class Clase {
  final String id;
  final String nombre;
  final String descripcion;
  final Map<String, int> bonificadores;

  Clase({
    required this.id,
    required this.nombre,
    required this.descripcion,
    required this.bonificadores,
  });

  factory Clase.fromJson(Map<String, dynamic> json) {
    return Clase(
      id: json['id'],
      nombre: json['nombre'],
      descripcion: json['descripcion'],
      bonificadores: Map<String, int>.from(json['bonificadores'] ?? {}),
    );
  }
}
