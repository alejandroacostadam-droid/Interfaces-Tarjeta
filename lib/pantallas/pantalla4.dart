import '../widgets/seccionAtributos4.dart';

import 'package:flutter/material.dart';

import '../design/colores.dart';
import '../widgets/cabecera4.dart';
import '../widgets/tarjeta_resumen.dart';
import '../widgets/tarjeta_raza_clase.dart';
import '../widgets/tarjeta_atributos_mentales.dart';
import '../widgets/tarjeta_equipamiento_final.dart';

class PantallaFinal extends StatelessWidget {
  // El personaje que llega de la pantalla 3.
  // Es opcional SOLO mientras las demás pantallas no lo pasan:
  // si no llega, se usan los datos de prueba de abajo.
  final Map<String, dynamic>? personaje;

  const PantallaFinal({super.key, this.personaje});

  // PROVISIONAL: borrar cuando la pantalla 3 pase el personaje
  static const Map<String, dynamic> _personajePrueba = {
    'nombre': 'Eira Thorne',
    'biografia': 'Nacida en el norte, Eira creció entre historias de exploración y magia. Busca descubrir su lugar en el mundo y proteger a quienes la rodean.',
    'raza': 'Elfo',
    'clase': 'Guardián',
    'fuerza': 5,
    'destreza': 6,
    'constitucion': 5,
    'inteligencia': 7,
    'sabiduria': 5,
    'carisma': 4,
    'objeto': 'baston',
  };

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> datos = personaje ?? _personajePrueba;

    return Scaffold(
      backgroundColor: Colores.fondo,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Cabecera4(),
              const SizedBox(height: 16.0),
              TarjetaResumen(personaje: datos),
              const SizedBox(height: 16.0),
              //SeccionAtributos4(),
              TarjetaRazaClase(personaje: datos),
              const SizedBox(height: 16.0),
              TarjetaAtributosMentales(
                inteligencia: datos['inteligencia'],
                sabiduria: datos['sabiduria'],
                carisma: datos['carisma'],
              ),
              const SizedBox(height: 16.0),
              TarjetaEquipamientoFinal(objeto: datos['objeto']),
            ],
          ),
        ),
      ),
    );
  }
}
