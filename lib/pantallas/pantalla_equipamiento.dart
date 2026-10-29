import 'package:flutter/material.dart';

import '../design/colores.dart';
import '../widgets/botones_inferiores.dart';
import '../widgets/cabecera.dart';
import '../widgets/seccion_atributos.dart';
import '../widgets/seccion_equipamiento.dart';

class PantallaEquipamiento extends StatefulWidget {
  final Map<String, dynamic> personaje;

  const PantallaEquipamiento({super.key, required this.personaje});

  @override
  State<PantallaEquipamiento> createState() => _PantallaEquipamientoState();
}

class _PantallaEquipamientoState extends State<PantallaEquipamiento> {
  final int puntosTotales = 8;

  int _puntosUsados() {
    return widget.personaje['inteligencia'] +
        widget.personaje['sabiduria'] +
        widget.personaje['carisma'] -
        15;
  }

  void _cambiarObjeto(String id) {
    setState(() {
      widget.personaje['objeto'] = id;
    });
  }

  void _cambiarAtributo(String atributo, int cambio) {
    int valor = widget.personaje[atributo];
    int puntosDisponibles = puntosTotales - _puntosUsados();

    if (cambio > 0 && (puntosDisponibles == 0 || valor == 16)) {
      return;
    }
    if (cambio < 0 && valor == 5) {
      return;
    }

    setState(() {
      widget.personaje[atributo] = valor + cambio;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colores.fondo,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Cabecera(),
              const SizedBox(height: 24.0),
              SeccionEquipamiento(
                objetoSeleccionado: widget.personaje['objeto'],
                onObjetoSeleccionado: _cambiarObjeto,
              ),
              const SizedBox(height: 28.0),
              SeccionAtributos(
                inteligencia: widget.personaje['inteligencia'],
                sabiduria: widget.personaje['sabiduria'],
                carisma: widget.personaje['carisma'],
                puntosDisponibles: puntosTotales - _puntosUsados(),
                puntosUsados: _puntosUsados(),
                onCambiar: _cambiarAtributo,
              ),
              const SizedBox(height: 24.0),
              const BotonesInferiores(),
            ],
          ),
        ),
      ),
    );
  }
}
