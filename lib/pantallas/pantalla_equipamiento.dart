import 'package:flutter/material.dart';

import '../design/colores.dart';
import '../widgets/botones_inferiores.dart';
import '../widgets/cabecera.dart';
import '../widgets/seccion_atributos.dart';
import '../widgets/seccion_equipamiento.dart';

class PantallaEquipamiento extends StatefulWidget {
  final ValueChanged<String>? onObjetoSeleccionado;

  const PantallaEquipamiento({super.key, this.onObjetoSeleccionado});

  @override
  State<PantallaEquipamiento> createState() => _PantallaEquipamientoState();
}

class _PantallaEquipamientoState extends State<PantallaEquipamiento> {
  String _objetoSeleccionado = 'Bastón de fresno';

  void _onEquipamientoCambiado(String nuevoObjeto) {
    setState(() {
      _objetoSeleccionado = nuevoObjeto;
    });
    widget.onObjetoSeleccionado?.call(nuevoObjeto);
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
                objetoInicial: _objetoSeleccionado,
                onObjetoSeleccionado: _onEquipamientoCambiado,
              ),
              const SizedBox(height: 28.0),
              const SeccionAtributos(),
              const SizedBox(height: 24.0),
              const BotonesInferiores(),
            ],
          ),
        ),
      ),
    );
  }
}
