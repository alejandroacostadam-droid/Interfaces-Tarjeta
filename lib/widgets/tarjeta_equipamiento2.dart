import 'package:flutter/material.dart';

import '../design/colores.dart';

class TarjetaEquipamiento2 extends StatelessWidget {
  final String titulo;
  final String categoria;
  final bool seleccionado;

  const TarjetaEquipamiento2({
    super.key,
    required this.titulo,
    required this.categoria,
    required this.seleccionado,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: seleccionado
            ? Colores
                  .superficieSeleccionada //Si el panel está seleccionado
            : Colores.superficie, // Si no lo está
        border: Border.all(
          color: seleccionado ? Colores.dorado : Colores.borde,
          width: seleccionado ? 1.2 : 1.0,
        ),
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colores.textoPrincipal,
            ),
          ),
          Text(
            categoria,
            style: const TextStyle(
              fontSize: 10.0,
              color: Colores.textoPrincipal,
            ),
          ),
          const SizedBox(height: 3.0),
        ],
      ),
    );
  }
}
