import "package:flutter/material.dart";
import "package:kts/src/screens/mycardScreen/mycard_screen.dart";
import 'package:kts/src/screens/navbar%20screen/buy_tickets.dart';
import "package:kts/src/screens/navbar%20screen/current_balance.dart";
import "package:kts/src/screens/navbar%20screen/navBar_screen.dart";
import "package:kts/src/screens/navbar%20screen/trip_history.dart";

class HomeScreen extends StatefulWidget {
  @override
  createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _current_index = 0;
  final tabs = [MyCardScreen(), TripHistory(), BuyTickets(), CurrentBalance()];

  @override
  Widget build(context) {
    return Scaffold(
      // backgroundColor: Colors.black,

      endDrawer: Navbar(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: Image.asset('assets/images/logo.png'),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: tabs[_current_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _current_index,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFFF87F5B),
        unselectedItemColor: Colors.grey[600],
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/mycard.png', width: 30, height: 30),
            activeIcon: Image.asset('assets/icons/mycardbg.png', width: 30, height: 30),
            label: "My Card",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/bus.png', width: 30, height: 30),
            activeIcon: Image.asset('assets/icons/busbg.png', width: 30, height: 30),
            label: "Trip History",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/ticket.png', width: 30, height: 30),
            activeIcon: Image.asset('assets/icons/ticketbg.png', width: 30, height: 30),
            label: "Buy Tickets",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/coin.png', width: 30, height: 30),
            activeIcon: Image.asset('assets/icons/coinbg.png', width: 30, height: 30),
            label: "Balance",
          ),
        ],
        onTap: (index) {
          setState(() {
            _current_index = index;
          });
        },
      ),
    );
  }
}
