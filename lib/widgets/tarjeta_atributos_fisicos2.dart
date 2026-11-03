import 'package:flutter/material.dart';

import '../design/colores.dart';

class TarjetaAtributosFisicos extends StatelessWidget {
  // Recibe el Map con los valores: {'Destreza': 3, 'Fuerza': 2, ...}
  final Map<String, int> atributos;

  const TarjetaAtributosFisicos({super.key, required this.atributos});

  // Igual que _filaAtributo de tu compañero: nombre, descripción y "burbuja" dorada.
  Widget _filaAtributo(String nombre, String descripcion, String valor) {
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
                descripcion,
                style: const TextStyle(
                  fontSize: 11.0,
                  color: Colores.textoSecundario,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          decoration: BoxDecoration(
            color: Colores.superficieSeleccionada,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Text(
            valor,
            style: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w700,
              color: Colores.dorado,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // ?? 0 = si el atributo no existe en el Map, usa 0 (evita errores).
    // Tu valorBase es 0, así que el valor ya es el bonus: no hay que restar nada.
    final destreza = atributos['Destreza'] ?? 0;
    final fuerza = atributos['Fuerza'] ?? 0;
    final resistencia = atributos['Resistencia'] ?? 0;
    final velocidad = atributos['Velocidad'] ?? 0;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        color: Colores.superficie,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colores.borde, width: 1.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Atributos físicos',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: Colores.textoPrincipal,
            ),
          ),
          const SizedBox(height: 12.0),
          _filaAtributo('Destreza', 'Agilidad y precisión.', '+$destreza'),
          const SizedBox(height: 12.0),
          _filaAtributo(
            'Fuerza',
            'Potencia y combate cuerpo a cuerpo.',
            '+$fuerza',
          ),
          const SizedBox(height: 12.0),
          _filaAtributo('Resistencia', 'Aguante y defensa.', '+$resistencia'),
          const SizedBox(height: 12.0),
          _filaAtributo('Velocidad', 'Rapidez y movimiento.', '+$velocidad'),
        ],
      ),
    );
  }
}
