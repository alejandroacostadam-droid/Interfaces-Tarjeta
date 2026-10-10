import 'package:flutter/material.dart';
import '../design/colores.dart';
import 'tarjeta_equipamiento.dart';

class SeccionEquipamiento extends StatelessWidget {
  const SeccionEquipamiento({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                    fontWeight: FontWeight.w400,
                    color: Colores.dorado,
                  ),
                ),
                SizedBox(width: 8.0),
                Text(
                  'Tu equipamiento',
                  style: TextStyle(
                    fontFamily: 'serif',
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                    color: Colores.textoPrincipal,
                  ),
                ),
              ],
            ),
            Text(
              '4 objetos',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: Colores.textoSecundario,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4.0),
        const Text(
          'Escoge un objeto inicial para tu aventura.',
          style: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w400,
            color: Colores.textoSecundario,
          ),
        ),
        const SizedBox(height: 14.0),
        Row(
          children: const [
            Expanded(
              child: TarjetaEquipamiento(
                titulo: 'Bastón de fresno',
                categoria: 'Foco arcano · 2 manos',
                icono: Icons.auto_awesome,
                seleccionado: true,
              ),
            ),
            SizedBox(width: 12.0),
            Expanded(
              child: TarjetaEquipamiento(
                titulo: 'Espada corta',
                categoria: 'Arma cuerpo a cuerpo',
                icono: Icons.shield_outlined,
                seleccionado: false,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12.0),
        Row(
          children: const [
            Expanded(
              child: TarjetaEquipamiento(
                titulo: 'Arco de viajero',
                categoria: 'Arma a distancia',
                icono: Icons.near_me,
                seleccionado: false,
              ),
            ),
            SizedBox(width: 12.0),
            Expanded(
              child: TarjetaEquipamiento(
                titulo: 'Grimorio antiguo',
                categoria: 'Foco arcano · 1 mano',
                icono: Icons.auto_stories,
                seleccionado: false,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
