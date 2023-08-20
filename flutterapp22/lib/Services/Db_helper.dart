import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart  ';
import 'dart:io';
class Db_helper
{
  static const db_name="warisha1.db";
    static const db_version=1;
      static const db_table="Todo";
      //fields
        static const dt_id="war";
        static const dt_name="war";
        static const dt_title="war";
        static const dt_email="war";
        static const dt_description="war";
        //constructor static because unchangeble
static final Db_helper instance=Db_helper();
static Database? _database;
Future <Database?> get database async
{
 return _database??=await initDB(); //if not null(??) 
//  return _database;

}

initDB() async{
  Directory directory =await getApplicationDocumentsDirectory();
 String path = join(directory.path, db_name);
  return await openDatabase(path,version: db_version,onCreate: onCreate );

}

  Future onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE $db_table(
      $dt_id INTEGER PRIMARY KEY,
      $dt_name TEXT NOT NULL
      $dt_title TEXT,
      $dt_email VARCHAR NOT NULL,
    $dt_description TEXT,
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

