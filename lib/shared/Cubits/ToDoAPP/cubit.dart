import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sqflite/sqflite.dart';
import 'package:untitled2/shared/Cubits/ToDoAPP/cubit.dart';
import 'package:untitled2/shared/Cubits/ToDoAPP/state.dart';

import '../../../modules/Todo/Archived.dart';
import '../../../modules/Todo/Done.dart';
import '../../../modules/Todo/Tasks.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(IntialState());

  static AppCubit get(context) => BlocProvider.of(context);
  var CurIndex = 0;
  late Database database;

  List<Widget> Screen = [
    Tasks(),
    Done(),
    Archived(),
  ];

  void ChangeIndex(int index) {
    CurIndex = index;
    emit(AppChangeBottomNavBar());
  }

  void CreateDB() {
    openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database, version) async {
        print('DB created');
        database
            .execute(
                'CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT,time TEXT, date TEXT, status TEXT)')
            .then((value) {
          print('table Created successfully');
        }).catchError((error) {
          print('there error');
        });
      },
      onOpen: (database) {
        Fluttertoast.showToast(
            msg: "DB opened",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            textColor: Colors.white,
            fontSize: 16.0);

        print('DB opened');
      },
    ).then((value) {
      database = value;
      emit(AppCreateDatabase());
    });
  }

  Future insertTODB({
    required String title,
    required String time,
    required String date,
  }) async {
    await database.transaction((txn) async {
      txn
          .rawInsert(
              'INSERT INTO tasks (title,time,date,status) VALUES("$title", "$time", "$date", "new")')
          .then((value) {
        print('${value} inserted Successfully');
        Fluttertoast.showToast(
            msg: "inserted Successfully",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            textColor: Colors.white,
            fontSize: 16.0);
      }).catchError((error) {
        print('there is error: ${error}');
      });

      //return null;
    });
  }

  Future<List<Map>> getDB(database) async {
    return await database.rawQuery('SELECT * FROM tasks');
  }
}
