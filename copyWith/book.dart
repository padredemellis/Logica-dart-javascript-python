class Book {
  final String title;
  final int pages;
  final String author;

  Book({required this.title, required this.pages, required this.author});

  Book copyWith({String? title, int? pages, String? author}){
    return Book(
      title: title ?? this.title,
      pages: pages ?? this.pages,
      author: author ?? this.author
    );
  }
}
