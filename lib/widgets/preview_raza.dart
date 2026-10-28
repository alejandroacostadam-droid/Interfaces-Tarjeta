import 'package:flutter/material.dart';

import '../design/tipografia.dart';
import '../design/colores.dart';

class PreviewRaza extends StatelessWidget {
  final dynamic raza; // una raza del JSON

  const PreviewRaza({super.key, required this.raza});

  // Nombres bonitos de los atributos del JSON
  static const Map<String, String> _nombresAtributos = {
    'fuerza': 'Fuerza',
    'destreza': 'Destreza',
    'constitucion': 'Constitución',
    'inteligencia': 'Inteligencia',
    'sabiduria': 'Sabiduría',
    'carisma': 'Carisma',
  };

  @override
  Widget build(BuildContext context) {
    // Rasgos = bonificadores distintos de 0, ej: "+1 Carisma"
    final Map<String, dynamic> bonificadores = raza['bonificadores'];
    final List<String> rasgos = [
      for (final bonificador in bonificadores.entries)
        if (bonificador.value != 0)
          '${bonificador.value > 0 ? '+' : ''}${bonificador.value} '
              '${_nombresAtributos[bonificador.key] ?? bonificador.key}',
    ];

    return Container(
      width: double.infinity, // siempre todo el ancho
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
          // LayoutBuilder nos da el ancho disponible para calcular el de la imagen.
          // El Stack mide lo que mide el texto, y la imagen (Positioned con
          // top: 0 y bottom: 0) se estira a ese mismo alto.
          LayoutBuilder(
            builder: (context, constraints) {
              final anchoImagen = constraints.maxWidth * 0.35;

              return Stack(
                children: [
                  // Texto: deja hueco a la izquierda para la imagen
                  Padding(
                    padding: EdgeInsets.only(left: anchoImagen + 12.0),
                    child: ConstrainedBox(
                      // Alto mínimo: todas las razas miden igual
                      constraints: const BoxConstraints(minHeight: 120.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(raza['nombre'], style: Tipografia.tituloTarjeta),
                          const SizedBox(height: 8.0),
                          Text(
                            raza['descripcion'],
                            style: Tipografia.textoLargo,
                          ),
                          if (rasgos.isNotEmpty) ...[
                            const SizedBox(height: 12.0),
                            Wrap(
                              spacing: 8.0,
                              runSpacing: 8.0,
                              children: [
                                for (final rasgo in rasgos)
                                  _Etiqueta(texto: rasgo),
                              ],
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                  // Imagen de la raza: zoom a la cabeza
                  Positioned(
                    left: 0,
                    top: 0,
                    bottom: 0,
                    width: anchoImagen,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Container(
                        color: Colores.dorado.withValues(alpha: 0.12),
                        child: Transform.scale(
                          scale: 1.8, // cuánto zoom
                          alignment: const Alignment(0, -1.1), // hacia dónde
                          child: Image.asset(
                            'assets/raza/${raza['id']}.png',
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                            errorBuilder: (context, error, stackTrace) =>
                                const SizedBox(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
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
