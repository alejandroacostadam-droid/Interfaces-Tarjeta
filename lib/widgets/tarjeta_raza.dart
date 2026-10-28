import 'package:flutter/material.dart';

import '../design/tipografia.dart';
import '../design/colores.dart';

class TarjetaRaza extends StatelessWidget {
  final String titulo;
  final String descripcion;
  final IconData icono;
  final bool seleccionado;
  final VoidCallback onTap;

  const TarjetaRaza({
    super.key,
    required this.titulo,
    required this.descripcion,
    required this.icono,
    required this.seleccionado,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: seleccionado ? Colores.dorado.withValues(alpha: 0.12) : null,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: seleccionado ? Colores.dorado : Colores.borde,
            width: seleccionado ? 1.2 : 1.0,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Círculo con el icono de la raza
                Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: seleccionado ? Colores.dorado : Colores.borde,
                  ),
                  child: Icon(
                    icono,
                    size: 16,
                    color: seleccionado
                        ? Colors.black
                        : Colores.textoSecundario,
                  ),
                ),
                // Check o círculo vacío
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: seleccionado ? Colores.dorado : null,
                    border: Border.all(
                      color: seleccionado
                          ? Colores.dorado
                          : Colores.textoSecundario,
                      width: 1.5,
                    ),
                  ),
                  child: seleccionado
                      ? const Icon(Icons.check, size: 13, color: Colors.black)
                      : null,
                ),
              ],
            ),
            const SizedBox(height: 12.0),
            Text(titulo, style: Tipografia.tituloTarjeta),
            const SizedBox(height: 3.0),
            Text(descripcion, style: Tipografia.descripcionTarjeta),
          ],
        ),
      ),
    );
  }
}
