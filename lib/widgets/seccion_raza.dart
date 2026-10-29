import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../design/tipografia.dart';
import 'tarjeta_raza.dart';
import 'preview_raza.dart';

class SeccionRaza extends StatefulWidget {
  final String? razaInicial; // id de la raza, ej: 'elfo'
  final ValueChanged<Map<String, dynamic>>? onRazaSeleccionada;

  const SeccionRaza({super.key, this.razaInicial, this.onRazaSeleccionada});

  @override
  State<SeccionRaza> createState() => _SeccionRazaState();
}

class _SeccionRazaState extends State<SeccionRaza> {
  late String _razaSeleccionada;
  List<dynamic> _razas = [];

  @override
  void initState() {
    super.initState();
    _razaSeleccionada = widget.razaInicial ?? 'humano';
    _cargarRazas();
  }

  Future<void> _cargarRazas() async {
    final String texto = await rootBundle.loadString('assets/data/razas.json');
    setState(() {
      _razas = jsonDecode(texto);
    });

    // Avisamos de la raza que sale marcada al empezar,
    // para que se guarde aunque el usuario no toque ninguna
    if (_razas.isNotEmpty) {
      final inicial = _razas.firstWhere(
        (raza) => raza['id'] == _razaSeleccionada,
        orElse: () => _razas.first,
      );
      widget.onRazaSeleccionada?.call(inicial);
    }
  }

  IconData _iconoRaza(String id) {
    switch (id) {
      case 'humano':
        return Icons.person_outline;
      case 'elfo':
        return Icons.eco_outlined;
      case 'enano':
        return Icons.hardware_outlined;
      case 'orco':
        return Icons.fitness_center;
      default:
        return Icons.help_outline;
    }
  }

  Widget _crearTarjeta(dynamic raza) {
    return TarjetaRaza(
      titulo: raza['nombre'],
      descripcion: raza['descripcion'],
      icono: _iconoRaza(raza['id']),
      seleccionado: _razaSeleccionada == raza['id'],
      onTap: () => _seleccionar(raza),
    );
  }

  @override
  void didUpdateWidget(covariant SeccionRaza oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.razaInicial != null && widget.razaInicial != _razaSeleccionada) {
      _razaSeleccionada = widget.razaInicial!;
    }
  }

  void _seleccionar(dynamic raza) {
    setState(() {
      _razaSeleccionada = raza['id'];
    });
    widget.onRazaSeleccionada?.call(raza);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text('02', style: Tipografia.numeroSeccion),
            const SizedBox(width: 10.0),
            Flexible(
              child: Text(
                'Selecciona una raza',
                style: Tipografia.tituloSeccion,
              ),
            ),
          ],
        ),
        Text(
          'Elige una raza para ver su descripción y visualizar tu elección.',
          style: Tipografia.descripcionSeccion,
        ),
        const SizedBox(height: 15.0),
        for (int i = 0; i < _razas.length; i += 2)
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: SizedBox(
              height: 125.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(child: _crearTarjeta(_razas[i])),
                  const SizedBox(width: 12.0),
                  Expanded(
                    child: i + 1 < _razas.length
                        ? _crearTarjeta(_razas[i + 1])
                        : const SizedBox(),
                  ),
                ],
              ),
            ),
          ),
        // El preview solo sale cuando ya se han cargado las razas
        if (_razas.isNotEmpty) ...[
          const SizedBox(height: 8.0),
          PreviewRaza(
            raza: _razas.firstWhere(
              (raza) => raza['id'] == _razaSeleccionada,
              orElse: () => _razas.first,
            ),
          ),
        ],
      ],
    );
  }
}
