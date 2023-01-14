import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/shared/Cubits/ToDoAPP/cubit.dart';
import 'package:untitled2/shared/Cubits/ToDoAPP/state.dart';

import '../../../modules/Todo/Archived.dart';
import '../../../modules/Todo/Done.dart';
import '../../../modules/Todo/Tasks.dart';

class AppCubit extends Cubit<AppState> {



  AppCubit(): super (IntialState());




  static AppCubit get(context)=>BlocProvider.of(context);
  var CurIndex=0;


  List<Widget> Screen=[
    Tasks(),
    Done(),
    Archived(),


  ];

  void ChangeIndex(int index){
    CurIndex= index;
    emit(AppChangeBottomNavBar());
  }

}