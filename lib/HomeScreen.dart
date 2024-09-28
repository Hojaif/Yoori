import 'package:flutter/material.dart';
import 'package:yoori/views/screen/NavBarScreen/Dashbord/Dashbord.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // List of widgets for each screen
  final List<Widget> _screens = [
    Dashbord(),
    CategoryScreenWidget(),
    MessageScreenWidget(),
    CartScreenWidget(),
    AccountScreenWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/home.png',
              width: 24,
              height: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/catagory.png',
              width: 24,
              height: 24,
            ),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/sms.png',
              width: 24,
              height: 24,
            ),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/card.png',
              width: 24,
              height: 24,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/account.png',
              width: 24,
              height: 24,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

// Placeholder widgets for each screen
class HomeScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Home Screen'));
  }
}

class CategoryScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Category Screen'));
  }
}

class MessageScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Message Screen'));
  }
}

class CartScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Cart Screen'));
  }
}

class AccountScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Account Screen'));
  }
}
