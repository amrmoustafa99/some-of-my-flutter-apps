import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled2/layout/NewsApi_btnb/Cubit/state.dart';
import 'package:untitled2/modules/Business/Business.dart';
import 'package:untitled2/modules/Science/Science.dart';
import 'package:untitled2/modules/Settings_Screens/Settings_News.dart';
import 'package:untitled2/modules/Sports/Sports.dart';

import '../../../models/News/DioHelper.dart';

class NewsCubit extends Cubit<NewsState>{

  NewsCubit(): super (InitialState());

  static NewsCubit get(context)=>BlocProvider.of(context);

  int currentIndex=0;

  List <BottomNavigationBarItem> bottomItems=[
    BottomNavigationBarItem(
        icon:Icon(Icons.business,),
      label: "Business"
    ),
    BottomNavigationBarItem(
        icon:Icon(Icons.sports,),
      label: "Sports"
    ),
    BottomNavigationBarItem(
        icon:Icon(Icons.science,),
      label: "Science"
    ),
    BottomNavigationBarItem(
        icon:Icon(Icons.settings,),
      label: "Settings"
    ),
  ];

  List<Widget> Scereens=[
    Business(),
    Sports(),
    Science(),
    Settings()
  ];
  void ChangeCurrentIndex(int index){
    currentIndex=index;
    if(index==1){
      getSports();
    }
    else if(index==2){
      getScience();
    }

    emit(Change_btnb());
  }



  List<dynamic> business=[];
  void getBusiness(){
    emit(NewsGetBusinessLoadingState());
    DioHelper.getDate(
      url:'v2/top-headlines',
      query: {
        'country':'eg',
        'category':'business',
        'apiKey':'d4ca56842db04cc8b8e36ae5627531dd',
      },
    ).then((value) {
      business=value?.data['articles'];
      print(business[0]['title']);



      emit(NewsGetBusinessSuccefullyState());
    }).catchError((error){

      print(error.toString());
      emit(NewsGetBusinessErrorState(error.toString()));
    });
  }

  List<dynamic> sports=[];
  void getSports(){
    emit(NewsGetSportsLoadingState());

    if(sports.length==0){
      DioHelper.getDate(
        url:'v2/top-headlines',
        query: {
          'country':'eg',
          'category':'sports',
          'apiKey':'d4ca56842db04cc8b8e36ae5627531dd',
        },
      ).then((value) {
        sports=value?.data['articles'];
        print(sports[0]['title']);




      }).catchError((error){

        print(error.toString());
        emit(NewsGetSportsErrorState(error.toString()));
      });
    }
    else{
      emit(NewsGetSportsSuccefullyState());
    }

  }

  List<dynamic> science=[];
  void getScience(){
    emit(NewsGetScienceLoadingState());
    if(science.length==0) {

      DioHelper.getDate(
        url:'v2/top-headlines',
        query: {
          'country':'eg',
          'category':'science',
          'apiKey':'d4ca56842db04cc8b8e36ae5627531dd',
        },
      ).then((value) {
        science=value?.data['articles'];
        print(science[0]['title']);




      }).catchError((error){

        print(error.toString());
        emit(NewsGetScienceErrorState(error.toString()));
      });
    }
    else{
      emit(NewsGetScienceSuccefullyState());
    }

  }
}