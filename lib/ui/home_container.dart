import 'file:///C:/Users/Firoz_Mahmud/AndroidStudioProjects/floating_button_on_bottom_bar/lib/ui/home/home.dart';
import 'file:///C:/Users/Firoz_Mahmud/AndroidStudioProjects/floating_button_on_bottom_bar/lib/ui/profile/profile.dart';
import 'file:///C:/Users/Firoz_Mahmud/AndroidStudioProjects/floating_button_on_bottom_bar/lib/ui/store/store.dart';
import 'package:flutter/material.dart';

class HomeContainer extends StatefulWidget {
  @override
  _HomeContainerState createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  var currentIndex = 0;
  final pages = [Home(), Store(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        elevation: 10,
        selectedFontSize: 15,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(label: 'Store', icon: Icon(Icons.add)),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'Profile')
        ],
        onTap: (index) {
          currentIndex = index;
          updateUI();
        },
      ),
      body: pages[currentIndex],
      floatingActionButton: FloatingActionButton(
        tooltip: 'Store',
        backgroundColor: Colors.teal,
        child: Icon(Icons.add),
        elevation: 4,
        onPressed: () {
          currentIndex = 1;
          updateUI();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void updateUI() {
    setState(() {});
  }
}
