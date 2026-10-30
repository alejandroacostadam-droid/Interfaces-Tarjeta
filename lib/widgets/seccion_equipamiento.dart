import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../design/colores.dart';
import 'tarjeta_equipamiento.dart';

class SeccionEquipamiento extends StatefulWidget {
  final String objetoSeleccionado;
  final ValueChanged<String> onObjetoSeleccionado;

  const SeccionEquipamiento({
    super.key,
    required this.objetoSeleccionado,
    required this.onObjetoSeleccionado,
  });

  @override
  State<SeccionEquipamiento> createState() => _SeccionEquipamientoState();
}

class _SeccionEquipamientoState extends State<SeccionEquipamiento> {
  List<dynamic> _objetos = [];

  @override
  void initState() {
    super.initState();
    _cargarObjetos();
  }

  Future<void> _cargarObjetos() async {
    final String texto = await rootBundle.loadString('assets/data/objetos.json');
    setState(() {
      _objetos = jsonDecode(texto);
    });
  }

  IconData _iconoObjeto(String id) {
    switch (id) {
      case 'espada':
        return Icons.gavel;
      case 'arco':
        return Icons.near_me;
      case 'baston':
        return Icons.auto_awesome;
      case 'escudo':
        return Icons.shield_outlined;
      default:
        return Icons.help_outline;
    }
  }

  String _textoBonus(dynamic objeto) {
    String texto = '';
    Map<String, dynamic> bonificadores = objeto['bonificadores'];
    bonificadores.forEach((atributo, valor) {
      if (valor > 0) {
        texto = '+$valor $atributo';
      }
    });
    return texto;
  }

  Widget _crearTarjeta(dynamic objeto) {
    return TarjetaEquipamiento(
      titulo: objeto['nombre'],
      categoria: objeto['tipo'],
      descripcion: objeto['descripcion'],
      bonus: _textoBonus(objeto),
      icono: _iconoObjeto(objeto['id']),
      seleccionado: widget.objetoSeleccionado == objeto['id'],
      onTap: () => widget.onObjetoSeleccionado(objeto['id']),
    );
  }

  Widget _crearDetalle() {
    dynamic objetoElegido;
    for (var objeto in _objetos) {
      if (objeto['id'] == widget.objetoSeleccionado) {
        objetoElegido = objeto;
      }
    }

    if (objetoElegido == null) {
      return const Text(
        'Selecciona un objeto para ver sus detalles.',
        style: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.w400,
          color: Colores.textoSecundario,
        ),
      );
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Colores.borde,
          width: 1.0,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Vista previa del objeto',
            style: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w600,
              color: Colores.textoPrincipal,
            ),
          ),
          const SizedBox(height: 15.0),
          LayoutBuilder(
            builder: (context, constraints) {
              final double anchoImagen = constraints.maxWidth * 0.35;

              return Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: anchoImagen + 12.0),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(minHeight: 120.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            objetoElegido['nombre'],
                            style: const TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600,
                              color: Colores.textoPrincipal,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            objetoElegido['descripcion'],
                            style: const TextStyle(
                              fontSize: 10.0,
                              fontWeight: FontWeight.w400,
                              height: 1.6,
                              color: Colores.textoPrincipal,
                            ),
                          ),
                          const SizedBox(height: 12.0),
                          Wrap(
                            spacing: 8.0,
                            runSpacing: 8.0,
                            children: [
                              _crearEtiqueta(objetoElegido['tipo']),
                              _crearEtiqueta(_textoBonus(objetoElegido)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    bottom: 0,
                    width: anchoImagen,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Container(
                        color: Colores.dorado.withValues(alpha: 0.12),
                        child: Image.asset(
                          'assets/objetos/${objetoElegido['id']}.png',
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) => Icon(
                            _iconoObjeto(objetoElegido['id']),
                            size: 36.0,
                            color: Colores.dorado,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _crearEtiqueta(String texto) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      decoration: BoxDecoration(
        color: Colores.dorado.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 10.0,
          fontWeight: FontWeight.w500,
          color: Colores.dorado,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            const Row(
              children: [
                Text(
                  '01',
                  style: TextStyle(
                    fontFamily: 'serif',
                    fontSize: 22.0,
                    fontWeight: FontWeight.w400,
                    color: Colores.dorado,
                  ),
                ),
                SizedBox(width: 8.0),
                Text(
                  'Tu equipamiento',
                  style: TextStyle(
                    fontFamily: 'serif',
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                    color: Colores.textoPrincipal,
                  ),
                ),
              ],
            ),
            Text(
              '${_objetos.length} objetos',
              style: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: Colores.textoSecundario,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4.0),
        const Text(
          'Escoge un objeto inicial para tu aventura.',
          style: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w400,
            color: Colores.textoSecundario,
          ),
        ),
        const SizedBox(height: 14.0),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: (_objetos.length / 2).ceil(),
          itemBuilder: (context, index) {
            int i = index * 2;
            return Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(child: _crearTarjeta(_objetos[i])),
                    const SizedBox(width: 12.0),
                    Expanded(
                      child: i + 1 < _objetos.length
                          ? _crearTarjeta(_objetos[i + 1])
                          : const SizedBox(),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 4.0),
        _crearDetalle(),
      ],
    );
  }
}
