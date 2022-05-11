
class Book {
  final String id;
  final String title;
  final String author;
  final String imageUrl;
  final String description;
  final Format format;
  final double price;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.imageUrl,
    required this.description,
    required this.format,
    required this.price,
  });

}

enum Format {broche, poche,}