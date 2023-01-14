import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sqflite/sqflite.dart';
import 'package:untitled2/modules/Messanger1/MessangerScreen.dart';
import 'package:untitled2/modules/Messanger2/MessangerScreen2.dart';
import 'package:untitled2/modules/ShopScreen/ShopScreen.dart';
import 'package:untitled2/modules/Todo/Archived.dart';
import 'package:untitled2/modules/Todo/Done.dart';
import 'package:untitled2/modules/Todo/Tasks.dart';
import 'package:untitled2/modules/bmiCalc/BIMCalc.dart';
import 'package:untitled2/shared/Cubits/ToDoAPP/cubit.dart';
import 'package:untitled2/shared/Cubits/ToDoAPP/state.dart';
import 'package:untitled2/shared/components/components.dart';
import 'package:intl/intl.dart';

import '../../shared/components/constants.dart';

class Bottom_Navigation extends StatelessWidget {
  var keyScaffold = GlobalKey<ScaffoldState>();
  var keyForm = GlobalKey<FormState>();
  bool showBntSheet = false;
  IconData fbicon = Icons.edit;
  var titleControler = TextEditingController();
  var timeControler = TextEditingController();
  var dateControler = TextEditingController();

  // @override
  // void initState() {
  //   super.initState();
  //   CreateDB();
  // }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit()..CreateDB(),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (BuildContext context, AppState state) {},
        builder: (BuildContext context, AppState state) {
          AppCubit cubit = AppCubit.get(context);

          return Scaffold(
            key: keyScaffold,
            appBar: AppBar(
              title: Text('Todo'),
            ),
            body: ConditionalBuilder(
              condition: true,
              builder: (context) => cubit.Screen[cubit.CurIndex],
              fallback: (context) => Center(child: CircularProgressIndicator()),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                if (showBntSheet) {
                  if (keyForm.currentState!.validate()) {
                    /* insertTODB(
                            title: titleControler.text,
                            time: timeControler.text,
                            date: dateControler.text)
                        .then((value) {
                      getDB(database).then((value) {
                        Navigator.pop(context);
                        // setState((){
                        //   showBntSheet = false;
                        //   fbicon = Icons.edit;
                        //   tasks=value;
                        //
                        // });
                      });
                    });*/
                  }
                } else {
                  keyScaffold.currentState!
                      .showBottomSheet((context) => Form(
                            key: keyForm,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: defualtTextField(
                                      controller: titleControler,
                                      type: TextInputType.text,
                                      validate: (value) {
                                        if (value.isEmpty) {
                                          return 'Must be title here';
                                        } else
                                          return null;
                                      },
                                      onTap: () {},
                                      lable: 'Task Title',
                                      prefix: Icons.title,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: defualtTextField(
                                      controller: timeControler,
                                      type: TextInputType.text,
                                      validate: (value) {
                                        if (value.isEmpty) {
                                          return 'Must be time here';
                                        }
                                        return null;
                                      },
                                      onTap: () {
                                        showTimePicker(
                                                context: context,
                                                initialTime: TimeOfDay.now())
                                            .then((value) {
                                          timeControler.text =
                                              value!.format(context).toString();
                                          print(value!.format(context));
                                        });
                                      },
                                      lable: 'Time',
                                      prefix: Icons.watch_later_outlined,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: defualtTextField(
                                      controller: dateControler,
                                      type: TextInputType.text,
                                      validate: (value) {
                                        if (value.isEmpty) {
                                          return 'Must be Date here';
                                        }
                                        return null;
                                      },
                                      onTap: () {
                                        showDatePicker(
                                                context: context,
                                                initialDate: DateTime.now(),
                                                firstDate: DateTime.now(),
                                                lastDate: DateTime.parse(
                                                    '2023-10-16'))
                                            .then(
                                          (value) => dateControler.text =
                                              DateFormat.yMMMd().format(value!),
                                        );
                                      },
                                      lable: 'Date',
                                      prefix: Icons.watch_later_outlined,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ))
                      .closed
                      .then((value) {
                    showBntSheet = false;
                    // setState(() {
                    //   fbicon = Icons.edit;
                    // });
                  });
                  showBntSheet = true;
                  // setState(() {
                  //   fbicon=Icons.add;
                  // });
                }
              },
              child: Icon(fbicon),
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: cubit.CurIndex,
              onTap: (index) {
                // setState(() {
                //   CurIndex=index;
                // });
                cubit.ChangeIndex(index);
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.list_alt_rounded), label: 'Tasks'),
                BottomNavigationBarItem(icon: Icon(Icons.done), label: 'Done'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.archive), label: 'Archived'),
              ],
            ),
          );
        },
      ),
    );
  }

/*  Future insert_database() async {
    await database.transaction((txn) {
      return txn
          .rawInsert(
              'INSERT INTO tasks(title , time ,date, status) VALUES( "newTask" , "7" , "7/2002" , "active" )')
          .then((value) {
        print('done $value');
      }).catchError((onError) {
        print('Error ${onError.toString()}');
      });
    });
  }*/

}
