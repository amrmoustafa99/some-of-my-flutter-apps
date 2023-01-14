import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/modules/CounterScreen/Cubit/Cubit.dart';

import 'Cubit/States.dart';
class CounterScreen  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener:  (context, state) {
          if(state is PlusState){
            print('${state.counter} this is plus');
          }
          if(state is MinusState){
            print('${state.counter} this is minus');
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title:
              Text(
                  'CounterScreen'
              ),
            ),
            body:Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: (){

                      CounterCubit.get(context).minusCubit();

                      },
                      child: Text(
                        'Minus',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20
                    ),
                    child: Text(
                      '${CounterCubit.get(context).counter}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: (){
                        CounterCubit.get(context).plusCubit();;
                      },
                      child: Text(
                        'Plus',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      )),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

