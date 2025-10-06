import 'package:flutter/material.dart';
// import '../models/destination.dart';
import '../models/repository.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final DestinationRepository repository;

  const HomeScreen({Key? key, required this.repository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: repository.destinations.length,
      itemBuilder: (context, index) {
        final dest = repository.destinations[index];
        return ListTile(
          leading: const Icon(Icons.location_city, size: 40),
          title: Text(dest.name),
          subtitle: Text(dest.country),
          trailing: IconButton(
            icon: Icon(dest.isFavorite ? Icons.star : Icons.star_border),
            onPressed: () => repository.toggleFavorite(dest),
          ),
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DetailsScreen(destination: dest),
              ),
            );
          },
        );
      },
    );
  }
}
