import 'package:flutter/material.dart';

import '../design/colores.dart';
import 'tarjeta_equipamiento2.dart';

class SeccionEquipamiento2 extends StatefulWidget {
  const SeccionEquipamiento2({super.key});

  @override
  State<SeccionEquipamiento2> createState() => _SeccionEquipamiento2State();
}

class _SeccionEquipamiento2State extends State<SeccionEquipamiento2> {
  String claseSeleccionada = 'Arcano';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8.0),
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
        Row(
          children: [
            Expanded(
              child: TarjetaEquipamiento2(
                titulo: 'Guardián',
                categoria: 'Defensa y resistencia',
                seleccionado: claseSeleccionada == 'Guardián',
                iconos: Icons.shield,
                toque: () {
                  setState(() {
                    claseSeleccionada = 'Guardián';
                  });
                },
              ),
            ),
            SizedBox(width: 12.0),
            Expanded(
              child: TarjetaEquipamiento2(
                titulo: 'Cazador',
                categoria: 'Movilidad y precisión',
                seleccionado: claseSeleccionada == 'Cazador',
                iconos: Icons.browse_gallery,
                toque: () {
                  setState(() {
                    claseSeleccionada = 'Cazador';
                  });
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 14.0),
        Row(
          children: [
            Expanded(
              child: TarjetaEquipamiento2(
                titulo: 'Arcano',
                categoria: 'Magia y control',
                seleccionado: claseSeleccionada == 'Arcano',
                iconos: Icons.book,
                toque: () {
                  setState(() {
                    claseSeleccionada = 'Arcano';
                  });
                },
              ),
            ),
            SizedBox(width: 12.0),
            Expanded(
              child: TarjetaEquipamiento2(
                titulo: 'Bardo',
                categoria: 'Versatilidad y apoyo',
                seleccionado: claseSeleccionada == 'Bardo',
                iconos: Icons.auto_fix_high,
                toque: () {
                  setState(() {
                    claseSeleccionada = 'Bardo';
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
