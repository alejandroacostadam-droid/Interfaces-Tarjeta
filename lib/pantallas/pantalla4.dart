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
  String _objetoSeleccionado = 'Bastón mágico';

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
          
        ),
      ),
    );
  }
}
