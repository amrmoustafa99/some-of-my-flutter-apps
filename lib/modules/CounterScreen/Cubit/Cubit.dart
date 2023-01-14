import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/modules/CounterScreen/Cubit/States.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit(): super (InitailState());
static CounterCubit get(context) =>BlocProvider.of(context);

  int counter=1;

  void plusCubit(){
    counter++;
    emit(PlusState(counter));
  }
  void minusCubit(){
    counter--;
    emit(MinusState(counter));
  }



}