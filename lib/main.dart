import 'package:flutter/material.dart';
import 'models/destination.dart';
import 'models/repository.dart';
import 'models/user.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/bookings_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/about_screen.dart';
import 'widgets/app_drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  bool isDarkMode = false;

  late DestinationRepository repository;
  late UserProfile user;

  @override
  void initState() {
    super.initState();
    user = UserProfile(name: 'Khushi Patel');
    repository = DestinationRepository(
      destinations: [
        TouristDestination(
          name: 'Paris',
          country: 'France',
          description: 'City of lights',
          rating: 4.5,
        ),
        CulturalDestination(
          name: 'Kyoto',
          country: 'Japan',
          description: 'Beautiful temples',
          famousFood: 'Sushi',
        ),
        TouristDestination(
          name: 'New York',
          country: 'USA',
          description: 'City that never sleeps',
          rating: 4.6,
        ),
        CulturalDestination(
          name: 'Delhi',
          country: 'India',
          description: 'Vibrant markets and culture',
          famousFood: 'Chaat',
        ),
        TouristDestination(
          name: 'Rome',
          country: 'Italy',
          description: 'Historic ruins and art',
          rating: 4.7,
        ),
        CulturalDestination(
          name: 'Marrakech',
          country: 'Morocco',
          description: 'Colorful souks and palaces',
          famousFood: 'Tagine',
        ),
      ],
    );
  }

  void _onSelectDrawer(String route) {
    Navigator.pop(context);
    if (route == 'settings') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) =>
              SettingsScreen(toggleTheme: _toggleTheme, isDarkMode: isDarkMode),
        ),
      );
    }
    if (route == 'about') {
      Navigator.push(context, MaterialPageRoute(builder: (_) => AboutScreen()));
    }
  }

  void _toggleTheme() => setState(() => isDarkMode = !isDarkMode);

  @override
  Widget build(BuildContext context) {
    final pages = [
      HomeScreen(repository: repository),
      BookingsScreen(),
      ProfileScreen(repository: repository, user: user),
    ];

    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(title: const Text('Travel App')),
        drawer: AppDrawer(onSelect: _onSelectDrawer),
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (i) => setState(() => _selectedIndex = i),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Bookings'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
