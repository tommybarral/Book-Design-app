import 'package:flutter/foundation.dart';

import 'book.dart';

class BookData with ChangeNotifier{

  final List<Book> _bookItems = [
    Book(
        id: 'b1',
        title: 'Twilight chapter : 1',
        author: 'Stephenie Meyer',
        imageUrl: 'https://images-na.ssl-images-amazon.com/images/I/615ZIxEDozL.jpg',
        description: 'Isabella Swan, 17 ans, déménage à Forks, petite ville pluvieuse dans l\'état de Washington, pour vivre avec son père. Elle s\'attend à ce que sa nouvelle vie soit aussi ennuyeuse que la ville elle-même.',
        format: Format.poche,
        price: 18,
    ),
    Book(
      id: 'b2',
      title: 'Twilight chapter : 2',
      author: 'Stephenie Meyer',
      imageUrl: 'https://m.media-amazon.com/images/I/41IB9Mmv4EL.jpg',
      description: 'Bella fête ses 18 ans. La soirée d’anniversaire que lui organisent les Cullen tourne mal : la jeune fille se blesse et la vue de son sang provoque des réactions diverses chez les vampires.',
      format: Format.poche,
      price: 18,
    ),
    Book(
      id: 'b3',
      title: 'Twilight chapter : 3',
      author: 'Stephenie Meyer',
      imageUrl: 'https://m.media-amazon.com/images/I/41jatCu13eL.jpg',
      description: '« Deux futurs, deux âmes sœurs… C’était trop pour une seule personne. Je compris que ce n’était pas Edward et Jacob que j’avais essayé de réconcilier, c’étaient les deux parts de moi-même, la Bella d’Edward et la Bella de Jacob.',
      format: Format.poche,
      price: 18,
    ),
  ];

  List<Book> get bookItems {
    return [..._bookItems];
  }
}