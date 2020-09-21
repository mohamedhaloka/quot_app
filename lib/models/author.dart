class Author {
  String _author;

  Quot(dynamic obj) {
    _author = obj['author'];
  }

  Author.fromMap(Map<String, dynamic> data) {
    _author = data['author'];
  }

  Map<String, dynamic> toMap() => {'author': _author};

  String get quot => _author;
}
