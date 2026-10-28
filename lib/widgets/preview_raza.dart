import 'package:flutter/material.dart';

import '../design/tipografia.dart';
import '../design/colores.dart';

class PreviewRaza extends StatelessWidget {
  final String raza;

  const PreviewRaza({super.key, required this.raza});

  // Datos de cada raza: imagen, descripción larga y rasgos
  static const Map<String, Map<String, dynamic>> _datos = {
    'Medianoche': {
      'imagen': 'assets/razas/medianoche.png',
      'descripcion': 'La raza Medianoche se caracteriza por su conexión a la luna, una presencia silenciosa y una resistencia natural a la oscuridad. Es ideal para personajes que buscan misterio, sigilo y una conexión profunda con el mundo nocturno.',
      'rasgos': ['Sigilo', 'Resistencia a la oscuridad', 'Misticismo lunar'],
    },
    'Bosque': {
      'imagen': 'assets/razas/bosque.png',
      'descripcion': 'La raza Bosque vive en armonía con la naturaleza y mantiene una conexión profunda con la tierra. Es ideal para personajes pacientes, protectores y que se sienten en casa entre árboles y criaturas salvajes.',
      'rasgos': ['Afinidad natural', 'Curación herbal', 'Rastreo'],
    },
    'Fuego': {
      'imagen': 'assets/razas/fuego.png',
      'descripcion': 'La raza Fuego destaca por su carácter apasionado, su resistencia al calor y una voluntad inquebrantable. Es ideal para personajes valientes, impulsivos y dispuestos a enfrentarse a cualquier desafío.',
      'rasgos': ['Resistencia al calor', 'Fuerza de voluntad', 'Furia ígnea'],
    },
    'Mar': {
      'imagen': 'assets/razas/mar.png',
      'descripcion': 'La raza Mar está ligada al agua, con una gran agilidad y una conexión intuitiva con las corrientes. Es ideal para personajes adaptables, curiosos y que se mueven con libertad allá donde van.',
      'rasgos': ['Agilidad', 'Respiración acuática', 'Intuición'],
    },
  };

  @override
  Widget build(BuildContext context) {
    final datos = _datos[raza]!;
    final List<String> rasgos = List<String>.from(datos['rasgos']);

    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colores.borde, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Vista previa de raza', style: Tipografia.tituloTarjeta),
          const SizedBox(height: 15.0),
          // IntrinsicHeight + stretch: la imagen mide lo mismo de alto
          // que la columna de texto de la derecha
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Imagen de la raza (el color de fondo se ve si no hay imagen)
                // flex 3 de 11: más o menos una cuarta parte del ancho
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colores.dorado.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage(datos['imagen']),
                        fit: BoxFit.cover,
                        onError: (error, stackTrace) {},
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12.0),
                Expanded(
                  flex: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(raza, style: Tipografia.tituloTarjeta),
                      const SizedBox(height: 8.0),
                      Text(datos['descripcion'], style: Tipografia.textoLargo),
                      const SizedBox(height: 12.0),
                      Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children: [
                          for (final rasgo in rasgos) _Etiqueta(texto: rasgo),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Pastilla dorada para los rasgos
class _Etiqueta extends StatelessWidget {
  final String texto;

  const _Etiqueta({required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colores.dorado.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        texto,
        style: Tipografia.descripcionTarjeta.copyWith(color: Colores.dorado),
      ),
    );
  }
}
