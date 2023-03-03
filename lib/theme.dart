import 'dart:ui';

import 'package:flutter/material.dart';

// Colors
Color primary_main = const Color(0xFF1463FF);
Color primary_surface = const Color(0xFFD0E0FF);
Color primary_border = const Color(0xFF89B1FF);
Color primary_hover = const Color(0xFF3B7DFF);
Color primary_pressed = const Color(0xFF0D42AA);
Color primary_focus = const Color(0xFFB1CBFF);

Color primary2_main = const Color(0xFF00B3FF);
Color primary2_surface = const Color(0xFFCCF0FF);
Color primary2_border = const Color(0xFF80D9FF);
Color primary2_hover = const Color(0xFF2AC0FF);
Color primary2_pressed = const Color(0xFF0095D4);
Color primary2_focus = const Color(0xFFAAE6FF);

Color primary3_main = const Color(0xFF7214FF);
Color primary3_surface = const Color(0xFFE3D0FF);
Color primary3_border = const Color(0xFFB889FF);
Color primary3_hover = const Color(0xFF893BFF);
Color primary3_pressed = const Color(0xFF5F11D4);
Color primary3_focus = const Color(0xFFD0B1FF);

Color success_1 = const Color(0xFF2ECC71);
Color success_2 = const Color(0xFFEAFFF3);
Color success_3 = const Color(0xFFB9EED0);
Color success_4 = const Color(0xFF26AA5E);
Color success_5 = const Color(0xFF176638);
Color success_6 = const Color(0xFFD5F5E3);

Color error_1 = const Color(0xFFE74C3C);
Color error_2 = const Color(0xFFFFF1F0);
Color error_3 = const Color(0xFFF7C3BE);
Color error_4 = const Color(0xFFC03F32);
Color error_5 = const Color(0xFF73261E);
Color error_6 = const Color(0xFFF5D3CC);

Color info_1 = const Color(0xFF2798FF);
Color info_2 = const Color(0xFFD4EAFF);
Color info_3 = const Color(0xFFB7DDFF);
Color info_4 = const Color(0xFF207FD4);
Color info_5 = const Color(0xFF134C80);
Color info_6 = const Color(0xFFD4EAFF);

Color neutral_10 = const Color(0xFFFFFFFF);
Color neutral_20 = const Color(0xFFF5F5F5);
Color neutral_30 = const Color(0xFFEDEDED);
Color neutral_40 = const Color(0xFFD6D6D6);
Color neutral_50 = const Color(0xFFC2C2C2);
Color neutral_60 = const Color(0xFF878787);
Color neutral_70 = const Color(0xFF606060);
Color neutral_80 = const Color(0xFF383838);
Color neutral_90 = const Color(0xFF403A3A);
Color neutral_100 = const Color(0xFF101010);

// Typography
TextStyle h5_bold = const TextStyle(
    fontFamily: 'Inter', fontWeight: FontWeight.w700, fontSize: 20);
TextStyle h5_semibold =
    h5_bold.copyWith(fontWeight: FontWeight.w600, fontSize: 20);
TextStyle h5_medium =
    h5_bold.copyWith(fontWeight: FontWeight.w500, fontSize: 20);
TextStyle h5_reguler =
    h5_bold.copyWith(fontWeight: FontWeight.w400, fontSize: 20);

TextStyle h6_bold = const TextStyle(
    fontFamily: 'Inter', fontWeight: FontWeight.w700, fontSize: 18);
TextStyle h6_semibold =
    h6_bold.copyWith(fontWeight: FontWeight.w600, fontSize: 18);
TextStyle h6_medium =
    h6_bold.copyWith(fontWeight: FontWeight.w500, fontSize: 18);
TextStyle h6_reguler =
    h6_bold.copyWith(fontWeight: FontWeight.w400, fontSize: 18);

TextStyle body_large_bold = const TextStyle(
    fontFamily: 'Inter', fontWeight: FontWeight.w700, fontSize: 16);
TextStyle body_large_semibold =
    body_large_bold.copyWith(fontWeight: FontWeight.w600, fontSize: 16);
TextStyle body_large_medium =
    body_large_bold.copyWith(fontWeight: FontWeight.w500, fontSize: 16);
TextStyle body_large_reguler =
    body_large_bold.copyWith(fontWeight: FontWeight.w400, fontSize: 16);

TextStyle body_medium_bold = const TextStyle(
    fontFamily: 'Inter', fontWeight: FontWeight.w700, fontSize: 14);
TextStyle body_medium_semibold =
    body_medium_bold.copyWith(fontWeight: FontWeight.w600, fontSize: 14);
TextStyle body_medium_medium =
    body_medium_bold.copyWith(fontWeight: FontWeight.w500, fontSize: 14);
TextStyle body_medium_reguler =
    body_medium_bold.copyWith(fontWeight: FontWeight.w400, fontSize: 14);

TextStyle body_small_bold = const TextStyle(
    fontFamily: 'Inter', fontWeight: FontWeight.w700, fontSize: 12);
TextStyle body_small_semibold =
    body_small_bold.copyWith(fontWeight: FontWeight.w600, fontSize: 12);
TextStyle body_small_medium =
    body_small_bold.copyWith(fontWeight: FontWeight.w500, fontSize: 12);
TextStyle body_small_reguler =
    body_small_bold.copyWith(fontWeight: FontWeight.w400, fontSize: 12);

TextStyle button_large_bold = const TextStyle(
    fontFamily: 'Inter', fontWeight: FontWeight.w700, fontSize: 16);
TextStyle button_large_semibold =
    button_large_bold.copyWith(fontWeight: FontWeight.w600, fontSize: 16);
TextStyle button_large_medium =
    button_large_bold.copyWith(fontWeight: FontWeight.w500, fontSize: 16);
TextStyle button_large_reguler =
    button_large_bold.copyWith(fontWeight: FontWeight.w400, fontSize: 16);

TextStyle button_medium_bold = const TextStyle(
    fontFamily: 'Inter', fontWeight: FontWeight.w700, fontSize: 14);
TextStyle button_medium_semibold =
    button_medium_bold.copyWith(fontWeight: FontWeight.w600, fontSize: 14);
TextStyle button_medium_medium =
    button_medium_bold.copyWith(fontWeight: FontWeight.w500, fontSize: 14);
TextStyle button_medium_reguler =
    button_medium_bold.copyWith(fontWeight: FontWeight.w400, fontSize: 14);

TextStyle button_small_bold = const TextStyle(
    fontFamily: 'Inter', fontWeight: FontWeight.w700, fontSize: 12);
TextStyle button_small_semibold =
    button_small_bold.copyWith(fontWeight: FontWeight.w600, fontSize: 12);
TextStyle button_small_medium =
    button_small_bold.copyWith(fontWeight: FontWeight.w500, fontSize: 12);
TextStyle button_small_reguler =
    button_small_bold.copyWith(fontWeight: FontWeight.w400, fontSize: 12);


// TextStyle regular12_5 =
//     const TextStyle(fontFamily: 'SF-Pro-Display', fontSize: 12.5);
// TextStyle regular14 = regular12_5.copyWith(fontSize: 14);

// TextStyle semibold12_5 = regular12_5.copyWith(fontWeight: FontWeight.w600);
// TextStyle semibold14 = semibold12_5.copyWith(fontSize: 14, letterSpacing: 0.1);

// TextStyle bold16 = regular12_5.copyWith(
//     fontWeight: FontWeight.w700, fontSize: 16, letterSpacing: 0.1);
// TextStyle bold18 = bold16.copyWith(fontSize: 18, letterSpacing: -0.5);
