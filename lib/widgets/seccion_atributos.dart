import 'package:flutter/material.dart';
import '../design/colores.dart';
import 'fila_atributo.dart';
import 'tarjeta_puntos.dart';

class SeccionAtributos extends StatelessWidget {
  final int inteligencia;
  final int sabiduria;
  final int carisma;
  final int puntosDisponibles;
  final int puntosUsados;
  final void Function(String atributo, int cambio) onCambiar;

  const SeccionAtributos({
    super.key,
    required this.inteligencia,
    required this.sabiduria,
    required this.carisma,
    required this.puntosDisponibles,
    required this.puntosUsados,
    required this.onCambiar,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
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
        const SizedBox(height: 4.0),
        const Text(
          'Cada aumento cuesta 1 punto. Base: 5 · Máximo: 16.',
          style: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w400,
            color: Colores.textoSecundario,
          ),
        ),
        const SizedBox(height: 14.0),
        TarjetaPuntos(
          puntosDisponibles: puntosDisponibles,
          puntosUsados: puntosUsados,
        ),
        const SizedBox(height: 20.0),
        FilaAtributo(
          nombre: 'Inteligencia',
          descripcion: 'Conocimiento y poder mágico',
          valor: inteligencia,
          onIncrementar: () => onCambiar('inteligencia', 1),
          onDecrementar: () => onCambiar('inteligencia', -1),
        ),
        const SizedBox(height: 18.0),
        FilaAtributo(
          nombre: 'Sabiduría',
          descripcion: 'Percepción e intuición',
          valor: sabiduria,
          onIncrementar: () => onCambiar('sabiduria', 1),
          onDecrementar: () => onCambiar('sabiduria', -1),
        ),
        const SizedBox(height: 18.0),
        FilaAtributo(
          nombre: 'Carisma',
          descripcion: 'Presencia y persuasión',
          valor: carisma,
          onIncrementar: () => onCambiar('carisma', 1),
          onDecrementar: () => onCambiar('carisma', -1),
        ),
      ],
    );
  }
}
