import 'package:path/path.dart';
import 'package:quot_app/models/quot.dart';
import 'package:sqflite/sqflite.dart';

// THIS IS SQLITE FILE
class DbHelper {
  static final DbHelper _instance = DbHelper.internal();
  factory DbHelper() => _instance;
  DbHelper.internal();
  static Database _db;
  Future<Database> createDatabase() async {
    if (_db != null) {
      return _db;
    }
    //define the path to the database
    String path = join(await getDatabasesPath(), 'quote.db');
    _db = await openDatabase(path, version: 1, onCreate: (Database db, int v) {
      //create all tables
      //db.execute("create table quotes(id integer primary key autoincrement, name text not null, quote text not null, )");
      db.execute('''
          create table quotes(
            id integer primary key autoincrement,
            quote text not null
          );
        ''');
    });
    return _db;
  }

  Future<int> createQuote(Quot quote) async {
    Database db = await createDatabase();
    //db.rawInsert('insert into courses')
    return db.insert('quotes', quote.toMap());
  }

  Future<List> allQuotes() async {
    Database db = await createDatabase();
    //db.rawQuery("select * from courses")
    return db.query('quotes', orderBy: 'id DESC');
  }

  Future<int> deleteQuote(int id) async {
    Database db = await createDatabase();
    return db.delete('quotes', where: 'id = ?', whereArgs: [id]);
  }
}
