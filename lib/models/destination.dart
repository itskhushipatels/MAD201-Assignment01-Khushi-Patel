class Destination {
  final String name;
  final String country;
  final String description;
  bool isFavorite = false;
  bool isVisited = false;

  Destination({
    required this.name,
    required this.country,
    required this.description,
  });

  void toggleFavorite() {
    isFavorite = !isFavorite;
  }

  void markVisited() {
    isVisited = true;
  }
}

class TouristDestination extends Destination {
  final double rating;

  TouristDestination({
    required String name,
    required String country,
    required String description,
    required this.rating,
  }) : super(name: name, country: country, description: description);
}

class CulturalDestination extends Destination {
  final String famousFood;

  CulturalDestination({
    required String name,
    required String country,
    required String description,
    required this.famousFood,
  }) : super(name: name, country: country, description: description);
}
