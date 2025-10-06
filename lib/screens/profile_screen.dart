import 'package:flutter/material.dart';
// import '../models/destination.dart';
import '../models/repository.dart';
import '../models/user.dart';

class ProfileScreen extends StatelessWidget {
  final DestinationRepository repository;
  final UserProfile user;

  const ProfileScreen({Key? key, required this.repository, required this.user})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    final visited = repository.destinations.where((d) => d.isVisited).toList();
    final favorites = repository.destinations
        .where((d) => d.isFavorite)
        .toList();

    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          const TabBar(
            tabs: [
              Tab(text: 'Info'),
              Tab(text: 'Visited'),
              Tab(text: 'Stats'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name: ${user.name}',
                        style: const TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Traveler Level: Beginner',
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  itemCount: visited.length,
                  itemBuilder: (context, index) {
                    final d = visited[index];
                    return ListTile(
                      title: Text(d.name),
                      subtitle: Text(d.country),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Total Favorites: ${favorites.length}'),
                      Text(
                        'Visited Countries: ${repository.getVisitedCountries().length}',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
