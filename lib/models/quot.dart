class Quot {
  String _quot;
  String _author;

  Quot(dynamic obj) {
    _quot = obj['quot'];
    _author = obj['author'];
  }

  Quot.fromMap(Map<String, dynamic> data) {
    _quot = data['quot'];
    _author = data['author'];
  }

  Map<String, dynamic> toMap() => {'quot': _quot, 'author': _author};

  String get quot => _quot;
  String get author => _author;
}
