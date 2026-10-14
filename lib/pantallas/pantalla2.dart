import 'package:flutter/material.dart';
import 'package:personarpg/widgets/cabecera2.dart';
import 'package:personarpg/widgets/tarjeta_equipamiento2.dart';

import '../design/colores.dart';
import '../widgets/botones_inferiores2.dart';
import '../widgets/seccion_atributos2.dart';
import '../widgets/seccion_equipamiento2.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Fondo principal de la tarjeta
      backgroundColor: Colores.fondo,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 24.0),
              Cabecera2(),
              TarjetaEquipamiento2(
                titulo: "Clase y atributos",
                categoria: "Selecciona una clase y distribuye tus atributos físicos para definir a tu personaje.",
                seleccionado: true,
              ),
              SeccionEquipamiento2(),
              SeccionAtributos2(),
            ],
          ),
        ),
      ),
    );
  }

  /*  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colores.fondo,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Cabecera(),
              SizedBox(height: 24.0),
              SeccionEquipamiento2(),
              SizedBox(height: 28.0),
              SeccionAtributos2(),
              SizedBox(height: 24.0),
              BotonesInferiores2(),
            ],
          ),
        ),
      ),
    );
  }*/
}
