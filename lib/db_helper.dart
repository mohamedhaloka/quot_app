import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'models/quot.dart';

class DBHelper {
  static final DBHelper dbHelper = DBHelper.internal();
  factory DBHelper() => dbHelper;
  DBHelper.internal();
  static Database database;

  createDatabase() async {
    if (database != null) {
      return database;
    }
    String path = join(await getDatabasesPath(), 'quot.db');
    database = await openDatabase(path, version: 1, onCreate: (db, i) {
      database.execute(
          'create table quotes(id integer primary key autoincrement, quotes varchar(100)');
    });
    return database;
  }

  Future<int> createQuotes(Quot quot) async {
    Database db = await createDatabase();
    // database.rawInsert('insert into quotes value');
    return db.insert('quotes', quot.toMap());
  }

  Future<List> allQuotes() async {
    Database db = await createDatabase();
     database.rawQuery('select * from quotes');
    return db.query('quotes');
  }

  Future<int> deleteQuotes(id) async {
    Database db = await createDatabase();
    return db.delete('quotes', where: 'id =?', whereArgs: [id]);
  }
}
