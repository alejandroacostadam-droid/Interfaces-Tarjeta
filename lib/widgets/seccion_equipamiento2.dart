import 'package:flutter/material.dart';
//import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../design/colores.dart';
import 'tarjeta_equipamiento2.dart';

class SeccionEquipamiento2 extends StatelessWidget {
  const SeccionEquipamiento2({super.key});

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
          children: const [
            //Icon(MdiIcons.sword),
            Expanded(
              child: TarjetaEquipamiento2(
                titulo: 'Guardián',
                categoria: 'Defensa y resistencia',
                seleccionado: true,
              ),
            ),
            SizedBox(width: 12.0),
            Expanded(
              child: TarjetaEquipamiento2(
                titulo: 'Cazador',
                categoria: 'Movilidad y precisión',
                seleccionado: false,
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
                seleccionado: false,
              ),
            ),
            SizedBox(width: 12.0),
            Expanded(
              child: TarjetaEquipamiento2(
                titulo: 'Bardo',
                categoria: 'Versatilidad y apoyo',
                seleccionado: false,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
