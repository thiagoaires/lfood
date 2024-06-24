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
            icon: PepperoniIconBar(
              icon: el.icon,
              countBadge: el.countBadge,
            ),
            label: el.label,
            activeIcon: PepperoniIconBar(
              icon: el.activeIcon,
              countBadge: el.countBadge,
            ),
          ),
        ),
      ),
      selectedItemColor: Colors.black87,
      unselectedItemColor: Colors.black38,
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

class PepperoniIconBar extends StatelessWidget {
  final IconData icon;
  final int countBadge;
  const PepperoniIconBar({
    super.key,
    required this.icon,
    required this.countBadge,
  });

  @override
  Widget build(BuildContext context) {
    if (countBadge > 0) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Icon(icon),
          Positioned(
            left: -5,
            top: -5,
            child: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 8,
              child: Text(
                "$countBadge",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ),
          ),
        ],
      );
    }
    return Icon(icon);
  }
}
