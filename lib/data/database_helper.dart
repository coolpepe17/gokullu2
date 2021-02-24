import 'dart:io';
// import 'package:fluttersqflite/models/user.dart';
import 'package:gokullu/models/user.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = new DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;

  static Database _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  DatabaseHelper.internal();

  initDb() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "main.db");
    var ourDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return ourDb;
  }

  void _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE User(id INTEGER PRIMARY KEY, username TEXT, password TEXT)");
    print("Table is created");
  }

//insertion
  Future<int> saveUser(User user) async {
    var dbClient = await db;
    int res = await dbClient.insert("User", user.toMap());
    return res;
  }

  //deletion
  Future<int> deleteUser(User user) async {
    var dbClient = await db;
    int res = await dbClient.delete("User");
    return res;
  }
}

// import 'dart:io';
// import 'package:gokullu/models/user.dart';
// import 'package:sqflite/sqflite.dart';
// import 'dart:async';
// import 'package:path_provider/path_provider.dart';

// class DatabaseHelper {
//   static DatabaseHelper _databaseHelper; // Singleton DatabaseHelper
//   static Database _database;

//   DatabaseHelper._createInstance(); // Named constructor to create instance of DatabaseHelper

//   factory DatabaseHelper() {
//     if (_databaseHelper == null) {
//       _databaseHelper = DatabaseHelper
//           ._createInstance(); // This is executed only once, singleton object
//     }
//     return _databaseHelper;
//   }

//   Future<Database> get database async {
//     if (_database == null) {
//       _database = await initializeDatabase();
//     }
//     return _database;
//   }

//   Future<Database> initializeDatabase() async {
//     // Get the directory path for both Android and iOS to store database.
//     Directory directory = await getApplicationDocumentsDirectory();
//     String path = directory.path + 'userDetails.db';

//     // Open/create the database at a given path
//     var userDetailsDatabase =
//         await openDatabase(path, version: 1, onCreate: _createDb);
//     return userDetailsDatabase;
//   }

//   void _createDb(Database db, int newVersion) async {
//     // await db.delete('$form1Table');

//     await db.execute("CREATE TABLE user("
//         'colId INTEGER PRIMARY KEY AUTOINCREMENT,'
//         // "colUserName TEXT ,"
//         'colEmail TEXT,'
//         'colPassword TEXT,'
//         // "colMobile TEXT ,"
//         "colImage TEXT"
//         ")");

//     print('table created');
//   }

//   // Insert Operation: Insert a Form1 object to database
//   Future<int> insertIntoUserTable(User obj) async {
//     Database db = await this.database;

//     var result = await db.insert('user', obj.toMap());
//     // print('data inserted');
//     return result;
//   }

//   // Update Operation: Update a Form1 object and save it to database
//   Future<int> updateUser(User obj) async {
//     var db = await this.database;
//     var result = await db
//         .update('user', obj.toMap(), where: 'colId = ?', whereArgs: [obj.id]);
//     return result;
//   }

//   Future<int> deleteUser(int id) async {
//     var db = await this.database;
//     int result = await db.rawDelete('DELETE FROM user WHERE colId = $id');
//     return result;
//   }

//   //get data from table
//   Future<List<User>> getDataFromUserTable() async {
//     var db = await this.database;
//     var results = await db.rawQuery('SELECT * FROM user');
//     int count = results.length;

//     List<User> userList = List<User>();
//     for (int i = 0; i < count; i++) {
//       userList.add(User.fromMapObject(results[i]));
//     }
//     return userList;
//   }

//   Future<int> getCount() async {
//     var db = await this.database;
//     List<Map<String, dynamic>> map =
//         await db.rawQuery('SELECT COUNT(*) FROM user');
//     int result = Sqflite.firstIntValue(map);
//     return result;
//   }
// }
