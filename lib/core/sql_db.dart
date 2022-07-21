import 'package:path/path.dart' as p;
import 'package:sqflite/sqflite.dart';

class SqlDb {
  static Database? _database;

  String tableName = 'user';
  String columnId = 'id';
  String columnName = 'name';

  Future<Database?> get database async {
    if (_database == null) {
      _database = await initDatabase();
      return _database;
    } else {
      return _database;
    }
  }

  initDatabase() async {
    String databasePath = await getDatabasesPath();
    String path = p.join(databasePath, 'users.db');
    Database myDd = await openDatabase(path, onCreate: onCreate, version: 1);
    return myDd;
  }

  onCreate(Database database, int version) async {
    await database.execute('''
create table $tableName ( 
  $columnId integer primary key autoincrement not null, 
  $columnName text not null
  )
''');
  }

  readData() async {
    Database? myDatabase = await database;
    List<Map> response = await myDatabase!.rawQuery('SELECT * FROM $tableName');
    return response;
  }

  insertData(String name) async {
    Database? myDatabase = await database;
    int response = await myDatabase!.rawInsert('''
     INSERT INTO $tableName
     ($columnName)
      VALUES("$name")''');
    return response;
  }

  updateData(int id, String name) async {
    Database? myDatabase = await database;
    int response = await myDatabase!.rawUpdate('''
      UPDATE  $tableName
      SET  $columnName= ? 
      WHERE id = $id
     ''', [
      (name),
    ]);
    return response;
  }

  deleteData(int id) async {
    Database? myDatabase = await database;
    int response = await myDatabase!
        .rawDelete('''DELETE FROM $tableName WHERE $columnId= $id''');
    return response;
  }

  deleteAllData() async {
    String databasePath = await getDatabasesPath();
    String path = p.join(databasePath, 'users.db');
    await deleteDatabase(path);
  }
}
