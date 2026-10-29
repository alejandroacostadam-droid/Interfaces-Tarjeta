class Clase {
  final String id;
  final String nombre;
  final String descripcion;

  Clase({required this.id, required this.nombre, required this.descripcion});

  // Convierte un trozo del JSON en una Clase
  factory Clase.fromJson(Map<String, dynamic> json) {
    return Clase(
      id: json['id'],
      nombre: json['nombre'],
      descripcion: json['descripcion'],
    );
  }
}
