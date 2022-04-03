import 'package:flutter/material.dart';

class CustomNavbar extends StatefulWidget {
  const CustomNavbar({Key? key}) : super(key: key);

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  int index = 0;
  final screens = const [
    Center(
      child: Text(
        "Home",
        style: TextStyle(fontSize: 72),
      ),
    ),
    Center(
      child: Text(
        "Chat",
        style: TextStyle(fontSize: 72),
      ),
    ),
    Center(
      child: Text(
        "Profile",
        style: TextStyle(fontSize: 72),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade100,
          labelTextStyle: MaterialStateProperty.all(
              TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        ),
        child: NavigationBar(
            height: 60,
            backgroundColor: Colors.redAccent,
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            selectedIndex: index,
            animationDuration: Duration(seconds: 2),
            onDestinationSelected: (index) =>
                setState(() => this.index = index),
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.email_outlined),
                  selectedIcon: Icon(Icons.mail),
                  label: "Home"),
              NavigationDestination(
                  selectedIcon: Icon(Icons.chat_bubble),
                  icon: Icon(Icons.chat_bubble_outline),
                  label: "Chat"),
              NavigationDestination(
                  selectedIcon: Icon(Icons.person),
                  icon: Icon(Icons.person_add),
                  label: "Profile")
            ]),
      ),
    );
  }
}
