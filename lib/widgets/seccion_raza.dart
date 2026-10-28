import 'package:flutter/material.dart';

import '../design/tipografia.dart';
import 'tarjeta_raza.dart';
import 'preview_raza.dart';

class SeccionRaza extends StatefulWidget {
  final String? razaInicial;
  final ValueChanged<String>? onRazaSeleccionada;

  const SeccionRaza({super.key, this.razaInicial, this.onRazaSeleccionada});

  @override
  State<SeccionRaza> createState() => _SeccionRazaState();
}

class _SeccionRazaState extends State<SeccionRaza> {
  late String _razaSeleccionada;

  @override
  void initState() {
    super.initState();
    _razaSeleccionada = widget.razaInicial ?? 'Medianoche';
  }

  @override
  void didUpdateWidget(covariant SeccionRaza oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.razaInicial != null && widget.razaInicial != _razaSeleccionada) {
      _razaSeleccionada = widget.razaInicial!;
    }
  }

  void _seleccionar(String raza) {
    setState(() {
      _razaSeleccionada = raza;
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
            Text('Selecciona una raza', style: Tipografia.tituloSeccion),
          ],
        ),
        Text(
          'Elige una raza para ver su descripción y visualizar tu elección.',
          style: Tipografia.descripcionSeccion,
        ),
        const SizedBox(height: 15.0),
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TarjetaRaza(
                  titulo: 'Medianoche',
                  descripcion: 'Raza misteriosa con conexión a la luna y una presencia silenciosa.',
                  icono: Icons.dark_mode_outlined,
                  seleccionado: _razaSeleccionada == 'Medianoche',
                  onTap: () => _seleccionar('Medianoche'),
                ),
              ),
              const SizedBox(width: 12.0),
              Expanded(
                child: TarjetaRaza(
                  titulo: 'Bosque',
                  descripcion: 'Raza en armonía con la naturaleza y con una conexión profunda a la tierra.',
                  icono: Icons.eco_outlined,
                  seleccionado: _razaSeleccionada == 'Bosque',
                  onTap: () => _seleccionar('Bosque'),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12.0),
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TarjetaRaza(
                  titulo: 'Fuego',
                  descripcion: 'Raza apasionada con resistencia al calor y una voluntad inquebrantable.',
                  icono: Icons.local_fire_department_outlined,
                  seleccionado: _razaSeleccionada == 'Fuego',
                  onTap: () => _seleccionar('Fuego'),
                ),
              ),
              const SizedBox(width: 12.0),
              Expanded(
                child: TarjetaRaza(
                  titulo: 'Mar',
                  descripcion: 'Raza ligada al agua, con agilidad y una conexión intuitiva a las corrientes.',
                  icono: Icons.water_drop_outlined,
                  seleccionado: _razaSeleccionada == 'Mar',
                  onTap: () => _seleccionar('Mar'),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20.0),
        PreviewRaza(raza: _razaSeleccionada),
      ],
    );
  }
}
