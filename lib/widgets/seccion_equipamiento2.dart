import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../design/colores.dart';
import '../modelos/clase.dart';
import 'tarjeta_equipamiento2.dart';

class SeccionEquipamiento2 extends StatefulWidget {
  const SeccionEquipamiento2({super.key});

  @override
  State<SeccionEquipamiento2> createState() => _SeccionEquipamiento2State();
}

class _SeccionEquipamiento2State extends State<SeccionEquipamiento2> {
  // Aquí guardamos las clases leídas del JSON. Empieza vacía.
  List<Clase> clases = [];

  // Guardamos el id de la clase elegida. El ? significa "puede no haber ninguna".
  String? claseSeleccionada;

  // Se ejecuta una sola vez al abrir la pantalla.
  @override
  void initState() {
    super.initState();
    cargarClases(); // leemos el JSON
  }

  // Lee el archivo y rellena la lista.
  Future<void> cargarClases() async {
    // 1. Leer el texto del archivo
    final texto = await rootBundle.loadString('assets/data/clases.json');

    // 2. Convertir el texto en una lista
    final List<dynamic> datos = jsonDecode(texto);

    // 3. Convertir cada elemento en una Clase
    final lista = datos.map((e) => Clase.fromJson(e)).toList();

    // 4. Guardar y redibujar la pantalla
    setState(() {
      clases = lista;
      claseSeleccionada = lista.first.id; // la primera queda elegida
    });
  }

  // Cada clase tiene su icono según su id.
  IconData iconoDe(String id) {
    if (id == 'guerrero') return Icons.shield;
    if (id == 'mago') return Icons.auto_fix_high;
    if (id == 'arquero') return Icons.gps_fixed;
    if (id == 'clerigo') return Icons.favorite;
    return Icons.help_outline;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: const [
            Row(
              children: [
                Text(
                  '01',
                  style: TextStyle(
                    fontFamily: 'serif',
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colores.dorado,
                  ),
                ),
                SizedBox(width: 8.0),
                Text(
                  'Tu Clase',
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
              '1 seleccionada',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                color: Colores.textoSecundario,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4.0),
        const Text(
          'Elige una especialización para orientar tus capacidades y resistencias.',
          style: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.bold,
            color: Colores.textoSecundario,
          ),
        ),
        const SizedBox(height: 14.0),

        // Wrap pone las tarjetas en filas y baja de línea solo.
        Wrap(
          spacing: 12.0,
          runSpacing: 14.0,
          // Por cada clase de la lista, creamos una tarjeta.
          children: clases.map((clase) {
            return SizedBox(
              width: (MediaQuery.of(context).size.width - 52.0) / 2,
              child: TarjetaEquipamiento2(
                titulo: clase.nombre,
                categoria: clase.descripcion,
                seleccionado: claseSeleccionada == clase.id,
                iconos: iconoDe(clase.id),
                toque: () {
                  setState(() {
                    claseSeleccionada = clase.id;
                  });
                },
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
