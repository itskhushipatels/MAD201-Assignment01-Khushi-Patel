import 'package:flutter/material.dart';
import '../models/destination.dart';

class DetailsScreen extends StatelessWidget {
  final Destination destination;

  const DetailsScreen({Key? key, required this.destination}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(destination.name)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              destination.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              destination.country,
              style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 16),
            Text(destination.description),
            if (destination is TouristDestination)
              Text('Rating: ${(destination as TouristDestination).rating}'),
            if (destination is CulturalDestination)
              Text(
                'Famous Food: ${(destination as CulturalDestination).famousFood}',
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                destination.isVisited = true;
                Navigator.pop(context);
              },
              child: const Text('Mark as Visited'),
            ),
            ElevatedButton(
              onPressed: () {
                destination.isFavorite = !destination.isFavorite;
              },
              child: const Text('Toggle Favorite'),
            ),
          ],
        ),
      ),
    );
  }
}
