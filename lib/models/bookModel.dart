class BookModel {
  String? id;
  String title;
  String? description;
  double rating;
  int pages;
  String language;
  String audioLen;
  String author;
  String? aboutAuthor;
  String? bookUrl;
  String? audioUrl;
  String? category;
  double price;
  int numberOfRating;

  BookModel({
    this.id,
    required this.title,
    this.description,
    required this.rating,
    required this.pages,
    required this.language,
    required this.audioLen,
    required this.author,
    this.aboutAuthor,
    this.bookUrl,
    this.audioUrl,
    this.category,
    required this.price,
    required this.numberOfRating,
  });

  // Convert JSON to Dart object
  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      rating: (json['rating'] as num).toDouble(),
      pages: json['pages'],
      language: json['language'],
      audioLen: json['audioLen'],
      author: json['author'],
      aboutAuthor: json['aboutAuthor'],
      bookUrl: json['bookUrl'],
      audioUrl: json['audioUrl'],
      category: json['category'],
      price: (json['price'] as num).toDouble(),
      numberOfRating: json['numberOfRating'],
    );
  }

  // Convert Dart object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'rating': rating,
      'pages': pages,
      'language': language,
      'audioLen': audioLen,
      'author': author,
      'aboutAuthor': aboutAuthor,
      'bookUrl': bookUrl,
      'audioUrl': audioUrl,
      'category': category,
      'price': price,
      'numberOfRating': numberOfRating,
    };
  }
}
