import 'package:flutter/material.dart';

import '../design/colores.dart';
import 'fila_atributo2.dart'; // Reutilizamos tu fila existente o una equivalente

class clase4 extends StatefulWidget {
  final Map<String, int>
  bonificadoresClase; // Recibe los bonificadores de la clase elegida

  const clase4({super.key, required this.bonificadoresClase});

  @override
  State<clase4> createState() => _clase4State();
}

class _clase4State extends State<clase4> {
  static const int valorBase = 0;
  static const int puntosTotales = 10; // Puntos mentales a repartir

  final Map<String, int> valores = {
    'Inteligencia': 0,
    'Sabiduría': 0,
    'Carisma': 0,
  };

  int get puntosUtilizados =>
      valores.values.fold(0, (suma, v) => suma + (v - valorBase));

  int get puntosDisponibles => puntosTotales - puntosUtilizados;

  void _sumar(String nombre) {
    if (puntosDisponibles > 0) {
      setState(() => valores[nombre] = valores[nombre]! + 1);
    }
  }

  void _restar(String nombre) {
    if (valores[nombre]! > valorBase) {
      setState(() => valores[nombre] = valores[nombre]! - 1);
    }
  }

  Widget _construirFila(String nombre, String descripcion, String claveJson) {
    final int puntosPropios = valores[nombre]! - valorBase;

    // Obtenemos el bono que aporta la clase seleccionada desde el JSON (ej. Inteligencia: 1)
    final int bonoClase = widget.bonificadoresClase[claveJson] ?? 0;

    // Sumamos los puntos repartidos + el bono de la clase para mostrarlo en la tarjeta de tu compañero
    final int valorTotal = puntosPropios + bonoClase;

    return FilaAtributo2(
      nombre: nombre,
      textoValor: puntosPropios > 0
          ? '+$puntosPropios puntos asignados'
          : '$puntosPropios puntos asignados',
      seleccionado: puntosPropios > 0,
      descripcion: descripcion,
      valor: valorTotal, // Muestra el valor final calculado con el JSON
      suma: () => _sumar(nombre),
      resta: () => _restar(nombre),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Cabecera de la sección con la puntuación al extremo derecho
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Row(
              children: const [
                SizedBox(height: 45.0),
                Text(
                  '03',
                  style: TextStyle(
                    fontFamily: 'serif',
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colores.dorado,
                  ),
                ),
                SizedBox(width: 8.0),
                Text(
                  'Atributos mentales',
                  style: TextStyle(
                    fontFamily: 'serif',
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colores.textoPrincipal,
                  ),
                ),
              ],
            ),
            Text(
              '$puntosUtilizados / $puntosTotales puntos',
              style: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                color: Colores.textoSecundario,
              ),
            ),
          ],
        ),
        const SizedBox(height: 0.5),
        const Text(
          'Estos atributos funcionan por puntos. Revisa cada valor antes de confirmar.',
          style: TextStyle(fontSize: 12.0, color: Colores.textoSecundario),
        ),
        const SizedBox(height: 14.0),

        // Contenedor de puntos disponibles / utilizados (Tarjeta común)
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          decoration: BoxDecoration(
            color: Colores.superficie,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colores.borde, width: 1.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Puntos disponibles',
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                      color: Colores.textoSecundario,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    '$puntosDisponibles',
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colores.dorado,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Puntos utilizados',
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                      color: Colores.textoSecundario,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    '$puntosUtilizados',
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colores.textoPrincipal,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        // Filas conectadas al JSON mediante las claves exactas del archivo
        _construirFila(
          'Inteligencia',
          'Magia, control y capacidad mental.',
          'inteligencia',
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 14.0),
          child: Divider(color: Colores.borde, thickness: 0.5, height: 1.0),
        ),
        _construirFila(
          'Sabiduría',
          'Percepción, intuición y resistencia mental.',
          'sabiduria',
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 14.0),
          child: Divider(color: Colores.borde, thickness: 0.5, height: 1.0),
        ),
        _construirFila(
          'Carisma',
          'Persuasión, liderazgo y presencia social.',
          'carisma',
        ),
      ],
    );
  }
}
