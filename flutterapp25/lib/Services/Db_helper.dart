import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io';

class Db_helper {
  static const db_name = "Details.db";
  static const db_version = 1;
  static const db_table = "info";
  static const dt_id = "id";
  static const dt_name = "name";

  static final Db_helper instance = Db_helper();

  static Database? _database;

  Future<Database?> get database async {
    _database ??= await initDB();
    return _database;
  }

  initDB() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, db_name);
    return await openDatabase(path, version: db_version, onCreate: onCreate);
  }

  Future onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE $db_table(
      $dt_id INTEGER PRIMARY KEY,
      $dt_name TEXT NOT NULL
    )
  ''');
  }

// insertRecord
  insertRecord(Map<String, dynamic> row) async {
    Database? db = await instance.database;
    return await db!.insert(db_table, row);
  }

// read/query records
  Future<List<Map<String, dynamic>>> queryDatabase() async {
    Database? db = await instance.database;
    return await db!.query(db_table);
  }

//update record
  Future<int> updateRecord(Map<String, dynamic> row) async {
    Database? db = await instance.database;
    int id = row[dt_id];
    return await db!.update(db_table, row, where: '$dt_id=?', whereArgs: [id]);
  }

// delete records
  Future<int> deleteRecord(int id) async {
    Database? db = await instance.database;
    return await db!.delete(db_table, where: '$dt_id=?', whereArgs: [id]);
  }
}

// class Db_helper extends StatefulWidget {
//   const Db_helper({super.key});

//   @override
//   State<Db_helper> createState() => _Db_helperState();
// }

// class _Db_helperState extends State<Db_helper> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(),
//     );
//   }
// }
