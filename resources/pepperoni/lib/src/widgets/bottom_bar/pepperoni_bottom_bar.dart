import 'package:flutter/material.dart';
import 'package:pepperoni/src/widgets/bottom_bar/pepperoni_bottom_bar_item.dart';

class PepperoniBottomBar extends StatefulWidget {
  final List<PepperoniBottomBarItem> items;
  final void Function(int index) onIndexSelected;
  const PepperoniBottomBar({
    super.key,
    required this.items,
    required this.onIndexSelected,
  });

  @override
  State<PepperoniBottomBar> createState() => _PepperoniBottomBarState();
}

class _PepperoniBottomBarState extends State<PepperoniBottomBar> {
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: List.from(
        widget.items.map(
          (el) => BottomNavigationBarItem(
            icon: Icon(el.icon),
            label: el.label,
          ),
        ),
      ),
      fixedColor: Colors.red,
      unselectedItemColor: Colors.black45,
      showUnselectedLabels: true,
      currentIndex: selectedItem,
      onTap: (value) {
        widget.onIndexSelected(value);
        setState(() {
          selectedItem = value;
        });
      },
    );
  }
}
