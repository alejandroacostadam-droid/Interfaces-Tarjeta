import 'package:flutter/material.dart';

import '../design/colores.dart';
import 'fila_atributo2.dart';

class SeccionAtributos2 extends StatefulWidget {
  const SeccionAtributos2({super.key});

  @override
  State<SeccionAtributos2> createState() => _SeccionAtributos2State();
}

class _SeccionAtributos2State extends State<SeccionAtributos2> {
  static const int valorBase = 0; // Valor mínimo de cada atributo
  static const int puntosTotales = 10; // Puntos que se pueden repartir

  // Esto es el estado de la pantalla: un Map que va a guardar el valor actual de cada atributo
  //String e int, el nombre y el valor de cada atributo
  final Map<String, int> valores = {
    'Destreza': 0,
    'Fuerza': 0,
    'Resistencia': 0,
    'Velocidad': 0,
  };

  // get es una variable que se calcula cada vez que la lees
  // fold recorre todos los valores y los va sumando:
  // el primer 0 es el valor desde el q parto, suma es el valor actual y v el valor del map por el q voy
  int get puntosUtilizados =>
      valores.values.fold(0, (suma, v) => suma + (v - valorBase));

  // Lo que queda por repartir
  int get puntosDisponibles => puntosTotales - puntosUtilizados;

  // Se ejecuta al pulsar + de cualquier fila
  void _sumar(String nombre) {
    // Solo suma si quedan puntos por repartir
    if (puntosDisponibles > 0) {
      // La ! le dice a Dart que ese nombre seguro existe en el Map
      setState(() => valores[nombre] = valores[nombre]! + 1);
    }
  }

  // Se ejecuta al pulsar -
  void _restar(String nombre) {
    if (valores[nombre]! > valorBase) {
      setState(() => valores[nombre] = valores[nombre]! - 1);
    }
  }

  // Método auxiliar: construye una fila a partir del nombre y la
  // descripción
  Widget _construirFila(String nombre, String descripcion) {
    // Puntos gastados en el atributo(destreza, fuerza, ...) (valor actual - base).
    final int asignados = valores[nombre]! - valorBase;

    return FilaAtributo2(
      nombre: nombre,
      // Si hay puntos gastados muestra cuantos son, sino el valor base
      textoValor: asignados > 0
          ? '+$asignados puntos asignados'
          : '$asignados puntos asignados',
      // Se pone dorado y en negrita solo si hay puntos asignados
      seleccionado: asignados > 0,
      descripcion: descripcion,
      valor: valores[nombre]!,
      // () => ... crea una función pequeña que la fila ejecutará al
      // pulsar. Así le decimos al padre QUÉ atributo se ha tocado.
      suma: () => _sumar(nombre),
      resta: () => _restar(nombre),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          textBaseline: TextBaseline.alphabetic,
          children: [
            const Row(
              children: [
                SizedBox(height: 45.0),
                Text(
                  '02',
                  style: TextStyle(
                    fontFamily: 'serif',
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colores.dorado,
                  ),
                ),
                SizedBox(width: 8.0),
                Text(
                  'Atributos físicos',
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
              // Son los valores actuales
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
          'Distribuye puntos entre Fuerza, Destreza, Resistencia y Velocidad.',
          style: TextStyle(fontSize: 12.0, color: Colores.textoSecundario),
        ),
        const SizedBox(height: 14.0),
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
        // Las 4 filas usan el método auxiliar de arriba.
        _construirFila('Destreza', 'Conocimiento y poder mágico'),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 14.0),
          child: Divider(color: Colores.borde, thickness: 0.5, height: 1.0),
        ),
        _construirFila('Fuerza', 'Percepción e intuición'),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 14.0),
          child: Divider(color: Colores.borde, thickness: 0.5, height: 1.0),
        ),
        _construirFila('Resistencia', 'Presencia y persuasión'),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 14.0),
          child: Divider(color: Colores.borde, thickness: 0.5, height: 1.0),
        ),
        _construirFila('Velocidad', 'Presencia y persuasión'),
      ],
    );
  }
}
