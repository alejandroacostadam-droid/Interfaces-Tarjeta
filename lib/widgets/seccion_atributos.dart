import 'package:flutter/material.dart';
import '../design/colores.dart';
import 'fila_atributo.dart';
import 'tarjeta_puntos.dart';

class SeccionAtributos extends StatelessWidget {
  const SeccionAtributos({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Row(
          children: [
            Text(
              '02',
              style: TextStyle(
                fontFamily: 'serif',
                fontSize: 22.0,
                fontWeight: FontWeight.w400,
                color: Colores.dorado,
              ),
            ),
            SizedBox(width: 8.0),
            Text(
              'La mente de tu héroe',
              style: TextStyle(
                fontFamily: 'serif',
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
                color: Colores.textoPrincipal,
              ),
            ),
          ],
        ),
        SizedBox(height: 4.0),
        Text(
          'Cada aumento cuesta 1 punto. Base: 8 · Máximo: 16.',
          style: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w400,
            color: Colores.textoSecundario,
          ),
        ),
        SizedBox(height: 14.0),
        TarjetaPuntos(),
        SizedBox(height: 20.0),
        FilaAtributo(
          nombre: 'Inteligencia',
          textoBadge: '+4 puntos asignados',
          badgeDorado: true,
          descripcion: 'Conocimiento y poder mágico',
          valor: '12',
        ),
        SizedBox(height: 18.0),
        FilaAtributo(
          nombre: 'Sabiduría',
          textoBadge: '+2 puntos asignados',
          badgeDorado: true,
          descripcion: 'Percepción e intuición',
          valor: '10',
        ),
        SizedBox(height: 18.0),
        FilaAtributo(
          nombre: 'Carisma',
          textoBadge: 'Valor base',
          badgeDorado: false,
          descripcion: 'Presencia y persuasión',
          valor: '8',
        ),
      ],
    );
  }
}
