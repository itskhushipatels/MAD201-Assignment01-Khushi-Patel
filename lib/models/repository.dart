import 'destination.dart';

class DestinationRepository {
  final List<Destination> destinations;

  DestinationRepository({required this.destinations});

  void toggleFavorite(Destination d) {
    d.toggleFavorite();
  }

  void markVisited(Destination d) {
    d.markVisited();
  }

  Set<String> getVisitedCountries() {
    return destinations.where((d) => d.isVisited).map((d) => d.country).toSet();
  }
}
