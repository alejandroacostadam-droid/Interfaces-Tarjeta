import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colores.dart';

/// Estilos de texto de la app, sacados de la guía "Tipografía y jerarquía".
/// - Cormorant Garamond: voz literaria (títulos y números)
/// - Inter: lectura funcional (interfaz y descripciones)
///
/// Ordenados tal como aparecen en pantalla, de arriba a abajo:
///   1. Barra superior  -> barraTitulo, pasoActual, pasoInactivo
///   2. Cabecera        -> capitulo, tituloPantalla
///   3. Cada sección    -> numeroSeccion + tituloSeccion,
///                         descripcionSeccion, contadorSeccion
///   4. Tarjetas        -> tituloTarjeta, descripcionTarjeta
///   5. Textos largos   -> textoLargo
///
/// Interlineado: 105% -> height: 1.05, 160% -> 1.6, 140% -> 1.4.
/// "Auto" significa no poner height.
class Tipografia {
  // ═════════════ 1. BARRA SUPERIOR ═════════════

  /// Texto centrado de la barra de arriba. Igual en todas las pantallas.
  /// Ej: "CREAR PERSONAJE"
  static final TextStyle barraTitulo = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.6,
    color: Colores.textoPrincipal,
  );

  /// Nombre del paso en el que estás ahora (barra de pasos). Dorado.
  /// Ej: "Identidad y raza" en la pantalla 1
  static final TextStyle pasoActual = GoogleFonts.inter(
    fontSize: 10,
    fontWeight: FontWeight.w600,
    height: 1.4,
    letterSpacing: 0,
    color: Colores.dorado,
  );

  /// Nombres de los pasos que NO son el actual (barra de pasos).
  /// Ej: "Clase y atributos físicos", "Equipo y mente", "Ficha final"
  static final TextStyle pasoInactivo = GoogleFonts.inter(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    height: 1.4,
    letterSpacing: 0,
    color: Colores.textoPrincipal, // gris apagado
  );

  // ═════════════ 2. CABECERA DE LA PANTALLA ═════════════

  /// Línea dorada pequeña ENCIMA del título de la pantalla.
  /// Ej: "I · CREA TU PERSONAJE", "III · PREPARA TU AVENTURA"
  static final TextStyle capitulo = GoogleFonts.inter(
    fontSize: 10,
    fontWeight: FontWeight.w600,
    letterSpacing: 2,
    color: Colores.dorado,
  );

  /// Título grande de la pantalla. Solo uno por pantalla.
  /// Ej: "Identidad y raza", "Clase y atributos", "Ficha final"
  /// Cormorant Garamond SemiBold 600 · 36 px · 105%
  static final TextStyle tituloPantalla = GoogleFonts.cormorantGaramond(
    fontSize: 36,
    fontWeight: FontWeight.w600,
    height: 1.05,
    letterSpacing: 0,
    color: Colores.textoPrincipal,
  );

  // ═════════════ 3. CADA SECCIÓN ═════════════

  /// Número dorado delante del título de sección.
  /// Ej: "01", "02"
  /// Cormorant Garamond Regular 400 · 22 px
  static final TextStyle numeroSeccion = GoogleFonts.cormorantGaramond(
    fontSize: 22,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    color: Colores.dorado,
  );

  /// Título de cada bloque dentro de la pantalla.
  /// Ej: "Identidad del personaje", "Selecciona una raza", "Tu equipamiento"
  /// Cormorant Garamond SemiBold 600 · 28 px
  static final TextStyle tituloSeccion = GoogleFonts.cormorantGaramond(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    color: Colores.textoPrincipal,
  );

  /// Frase corta bajo el título de sección que dice qué hacer.
  /// Ej: "Completa los datos básicos...", "Escoge un objeto inicial..."
  /// Inter Regular 400 · 13 px
  static final TextStyle descripcionSeccion = GoogleFonts.inter(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    color: Colores.textoPrincipal, // gris suave
  );

  /// Recuento pequeño a la derecha del título de sección.
  /// Ej: "4 objetos", "1 seleccionada", "5 / 10 puntos"
  /// Inter Regular 400 · 12 px
  static final TextStyle contadorSeccion = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    color: Colores.textoPrincipal, // gris apagado
  );

  // ═════════════ 4. TARJETAS ═════════════

  /// Nombre de lo que se elige en cada tarjeta.
  /// Ej: "Bastón de fresno", "Guardián", "Medianoche"
  /// Inter SemiBold 600 · 13 px
  static final TextStyle tituloTarjeta = GoogleFonts.inter(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    color: Colores.textoPrincipal,
  );

  /// Descripción pequeñita dentro de cada tarjeta.
  /// Ej: "Poco arcano · 2 manos", "Defensa y resistencia"
  /// Inter Regular 400 · 10 px
  static final TextStyle descripcionTarjeta = GoogleFonts.inter(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    color: Colores.textoPrincipal, // gris apagado
  );

  // ═════════════ 5. TEXTOS LARGOS ═════════════

  /// Textos de varias líneas. Más interlineado para leer cómodo.
  /// Ej: la biografía, la descripción en "Vista previa de raza"
  /// Inter Regular 400 · 13 px · 160%
  static final TextStyle textoLargo = GoogleFonts.inter(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    height: 1.6,
    letterSpacing: 0,
    color: Colores.textoPrincipal, // gris suave
  );
}
