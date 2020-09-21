class Quot {
  String _quot;

  Quot(dynamic obj) {
    _quot = obj['quot'];
  }

  Quot.fromMap(Map<String, dynamic> data) {
    _quot = data['quot'];
  }

  Map<String, dynamic> toMap() => {'quot': _quot};

  String get quot => _quot;
}
