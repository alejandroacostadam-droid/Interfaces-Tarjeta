import 'package:flutter/material.dart';

import '../design/colores.dart';

class FilaAtributo2 extends StatelessWidget {
  final String nombre;
  final String textoValor;
  final bool seleccionado;
  final String descripcion;
  final int valor;
  final VoidCallback suma;
  final VoidCallback resta;

  const FilaAtributo2({
    super.key,
    required this.nombre,
    required this.textoValor,
    required this.seleccionado,
    required this.descripcion,
    required this.valor,
    required this.suma,
    required this.resta,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 3.5),
              Text(
                nombre,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colores.textoPrincipal,
                ),
              ),
              const SizedBox(height: 5.0),
              Text(
                textoValor,
                style: TextStyle(
                  fontSize: 11.0,
                  fontWeight: seleccionado ? FontWeight.bold : FontWeight.w300,
                  color: seleccionado
                      ? Colores.dorado
                      : Colores.textoSecundario,
                ),
              ),
              const SizedBox(height: 5.0),
              Text(
                descripcion,
                style: const TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Colores.textoSecundario,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            // Botón resta -
            GestureDetector(
              onTap: resta,
              child: Container(
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
            ),
            // Valor de puntos
            Container(
              width: 38.0,
              alignment: Alignment.center,
              child: Text(
                '$valor',
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colores.textoPrincipal,
                ),
              ),
            ),
            // Botón suma +
            GestureDetector(
              onTap: suma,
              child: Container(
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
            ),
          ],
        ),
      ],
    );
  }
}
