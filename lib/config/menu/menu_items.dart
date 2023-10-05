import 'package:flutter/material.dart';

class MenuItem{
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  MenuItem({required this.title, required this.subtitle, required this.link, required this.icon});

}


final appMenuItems = <MenuItem> [
  MenuItem(title: 'Botones', subtitle: 'Botones Varios', link: '/buttons', icon: Icons.smart_button_outlined),
  MenuItem(title: 'Tarjetas', subtitle: 'Un contenedor estilizado', link: '/cards', icon: Icons.credit_card_outlined),
  MenuItem(title: 'Progress Indicator', subtitle: 'Indicadores de progreso', link: '/progress', icon: Icons.downloading),
  MenuItem(title: 'Animated', subtitle: 'Animaciones', link: '/animated', icon: Icons.animation),
  MenuItem(title: 'App Tutorial', subtitle: 'App tutorial', link: '/app_tutorial', icon: Icons.add_chart),
  MenuItem(title: 'Infinite Scroll', subtitle: 'Un scroll infinito', link: '/infinite_scroll', icon: Icons.arrow_circle_down_outlined),
  MenuItem(title: 'SnackBar', subtitle: 'Snack Bar', link: '/snackbar', icon: Icons.snapchat_outlined),
  MenuItem(title: 'UI Controls', subtitle: 'UI controles', link: '/ui_controls', icon: Icons.keyboard_option_key),
];