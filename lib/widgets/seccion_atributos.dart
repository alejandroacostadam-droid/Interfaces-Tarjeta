import 'package:flutter/material.dart';
import '../design/colores.dart';
import 'fila_atributo.dart';
import 'tarjeta_puntos.dart';

class SeccionAtributos extends StatefulWidget {
  const SeccionAtributos({super.key});

  @override
  State<SeccionAtributos> createState() => _SeccionAtributosState();
}

class _SeccionAtributosState extends State<SeccionAtributos> {
  // Variables simples de puntos
  int puntosDisponibles = 8;
  int puntosUsados = 0;

  // Variables simples de atributos (por defecto 5 cada uno)
  int inteligencia = 5;
  int sabiduria = 5;
  int carisma = 5;

  // Funciones sencillas para Inteligencia
  void incrementarInteligencia() {
    if (puntosDisponibles > 0 && inteligencia < 16) {
      setState(() {
        inteligencia++;
        puntosDisponibles--;
        puntosUsados++;
      });
    }
  }

  void decrementarInteligencia() {
    if (inteligencia > 5) {
      setState(() {
        inteligencia--;
        puntosDisponibles++;
        puntosUsados--;
      });
    }
  }

  // Funciones sencillas para Sabiduría
  void incrementarSabiduria() {
    if (puntosDisponibles > 0 && sabiduria < 16) {
      setState(() {
        sabiduria++;
        puntosDisponibles--;
        puntosUsados++;
      });
    }
  }

  void decrementarSabiduria() {
    if (sabiduria > 5) {
      setState(() {
        sabiduria--;
        puntosDisponibles++;
        puntosUsados--;
      });
    }
  }

  // Funciones sencillas para Carisma
  void incrementarCarisma() {
    if (puntosDisponibles > 0 && carisma < 16) {
      setState(() {
        carisma++;
        puntosDisponibles--;
        puntosUsados++;
      });
    }
  }

  void decrementarCarisma() {
    if (carisma > 5) {
      setState(() {
        carisma--;
        puntosDisponibles++;
        puntosUsados--;
      });
    }
  }

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
          onIncrementar: incrementarInteligencia,
          onDecrementar: decrementarInteligencia,
        ),
        const SizedBox(height: 18.0),
        FilaAtributo(
          nombre: 'Sabiduría',
          descripcion: 'Percepción e intuición',
          valor: sabiduria,
          onIncrementar: incrementarSabiduria,
          onDecrementar: decrementarSabiduria,
        ),
        const SizedBox(height: 18.0),
        FilaAtributo(
          nombre: 'Carisma',
          descripcion: 'Presencia y persuasión',
          valor: carisma,
          onIncrementar: incrementarCarisma,
          onDecrementar: decrementarCarisma,
        ),
      ],
    );
  }
}
