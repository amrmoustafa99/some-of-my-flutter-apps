import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/layout/NewsApi_btnb/Cubit/cubit.dart';
import 'package:untitled2/layout/NewsApi_btnb/Cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sqflite/sqflite.dart';
import 'package:intl/intl.dart';
import 'package:untitled2/models/News/DioHelper.dart';
import 'package:untitled2/modules/SearchScreen/SearchNews.dart';
import 'package:untitled2/shared/components/components.dart';


class NewsApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>NewsCubit()..getBusiness()..getSports()..getScience(),
      child: BlocConsumer<NewsCubit, NewsState>(
        listener: (context ,state){},
        builder: (context ,state){

          var cubit=NewsCubit.get(context);
         return Scaffold(
            appBar: AppBar(
              title: Text(
                "News",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              actions: [
                IconButton(
                    onPressed: (){
                      navigatorTO(context, SearchNews());

                    },
                    icon: Icon(Icons.search)
                )
              ],

            ),
            // floatingActionButton: FloatingActionButton(
            //     onPressed: (){
            //
            //     },
            //   child: Icon(Icons.add),
            // ),
            body: cubit.Scereens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              onTap: (index){
                cubit.ChangeCurrentIndex(index);
              },
              items:cubit.bottomItems ,

            ),


          );
        },

      ),
    );
  }
}
