import 'package:flutter/material.dart';

class PepperoniBottomBarItem {
  final IconData activeIcon;
  final IconData icon;
  final String label;
  final int countBadge;

  PepperoniBottomBarItem({
    required this.activeIcon,
    required this.icon,
    required this.label,
    this.countBadge = 0,
  });
}
