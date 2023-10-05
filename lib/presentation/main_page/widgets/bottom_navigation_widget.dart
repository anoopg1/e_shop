import 'package:flutter/material.dart';

ValueNotifier selectedIndex = ValueNotifier(0);

class BottomNavigationEshop extends StatelessWidget {
  const BottomNavigationEshop({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedIndex,
      builder: (context, updatedIndex, child) {
        return BottomNavigationBar(
            backgroundColor: Colors.blueGrey,
            showUnselectedLabels: true,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            onTap: (value) {
              selectedIndex.value = value;
            },
            currentIndex: updatedIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), label: "category"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ]);
      },
    );
  }
}
