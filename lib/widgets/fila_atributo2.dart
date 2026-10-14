/*import 'package:flutter/material.dart';

import '../design/colores.dart';

class FilaAtributo2 extends StatelessWidget {
  final String nombre;
  final String textoBadge;
  final bool badgeDorado;
  final String descripcion;
  final String valor;

  const FilaAtributo2({
    super.key,
    required this.nombre,
    required this.textoBadge,
    required this.badgeDorado,
    required this.descripcion,
    required this.valor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nombre,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: Colores.textoPrincipal,
                ),
              ),
              const SizedBox(height: 2.0),
              Text(
                textoBadge,
                style: TextStyle(
                  fontSize: 11.0,
                  fontWeight: badgeDorado ? FontWeight.w500 : FontWeight.w400,
                  color: badgeDorado ? Colores.dorado : Colores.textoSecundario,
                ),
              ),
              const SizedBox(height: 3.0),
              Text(
                descripcion,
                style: const TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Colores.textoSecundario,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Container(
              width: 36.0,
              height: 36.0,
              decoration: BoxDecoration(
                color: Colores.superficie,
                borderRadius: BorderRadius.circular(6.0),
                border: Border.all(color: Colores.borde, width: 1.0),
              ),
              child: const Icon(
                Icons.remove,
                size: 16.0,
                color: Colores.textoSecundario,
              ),
            ),
            Container(
              width: 38.0,
              alignment: Alignment.center,
              child: Text(
                valor,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                  color: Colores.textoPrincipal,
                ),
              ),
            ),
            Container(
              width: 36.0,
              height: 36.0,
              decoration: BoxDecoration(
                color: Colores.superficie,
                borderRadius: BorderRadius.circular(6.0),
                border: Border.all(color: Colores.borde, width: 1.0),
              ),
              child: const Icon(
                Icons.add,
                size: 16.0,
                color: Colores.textoSecundario,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
*/
