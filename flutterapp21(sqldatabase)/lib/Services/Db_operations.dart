import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class Db_operations {
  static const db_name = "warisha.db";
  static const db_version = 1;
  static const db_table = "myinfo";
  static const dt_id = "id";
  static const dt_email = "email";

  static final Db_operations instance = Db_operations();
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
  $dt_email TEXT NOT NULL
)
''');
  }
insertRecord(Map<String,dynamic> row)async
{
  Database? db =await instance.database;
  return await db!.insert(db_table, row);
}

Future<List<Map<String,dynamic>>> queryDatabase() async
{
Database? db=await instance.database;
return await db!.query(db_table);
}
Future<int> updateRecord(Map<String,dynamic>row)async
{
  Database? db=await instance.database;
  int id =row[dt_id];
  return await db!.update(db_table,row,where:'$dt_id=?',whereArgs: [id] );
}

 Future<int> deleteRecord(int id) async {
    Database? db = await instance.database;
    return await db!.delete(db_table, where: '$dt_id=?', whereArgs: [id]);
  }
}

