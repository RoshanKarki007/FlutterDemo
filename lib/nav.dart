import 'package:banking_app/pages/payment.dart';
import 'package:banking_app/pages/registration.dart';
import 'package:banking_app/pages/settings.dart';
import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _seletedIndex = 0;
  List _widgetOptions = [
    Registration(),
    Payment(),
    Settings(),
  ];
  void _onItemTap(int index) {
    setState(() {
      _seletedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_seletedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        fixedColor: Color.fromRGBO(0, 50, 100, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.app_registration,
            ),
            // ignore: deprecated_member_use
            title: Text("Registration"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            // ignore: deprecated_member_use
            title: Text("Payment"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            // ignore: deprecated_member_use
            title: Text("Settings"),
          ),
        ],
        currentIndex: _seletedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
