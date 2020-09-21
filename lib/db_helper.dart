import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'models/quot.dart';

class DBHelper {
  static final DBHelper dbHelper = DBHelper.internal();
  factory DBHelper() => dbHelper;
  DBHelper.internal();
  static Database database;
  String tableName = "quotes";
  createDatabase() async {
    if (database != null) {
      print("data not equal null");
      return database;
    }
    String path = join(await getDatabasesPath(), 'main.db');
    database = await openDatabase(path, version: 1, onCreate: _onCreate,);
    print("done");
    return database;
  }

  Future _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE $tableName(id INTEGER PRIMARY KEY AUTOINCREMENT, quot TEXT");
  }

  Future<int> createQuotes(Quot quot) async {
    print("step 1");
    Database db = await createDatabase();
    print("step 2");

    // database.rawInsert('insert into quotes value');
    return db.insert(tableName, quot.toMap());
  }

  Future<List> allQuotes() async {
    Database db = await createDatabase();
    database.rawQuery('select * from quotes');
    return db.query(tableName);
  }

  Future<int> deleteQuotes(id) async {
    Database db = await createDatabase();
    return db.delete(tableName, where: 'id =?', whereArgs: [id]);
  }
}
