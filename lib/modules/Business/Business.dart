import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/layout/NewsApi_btnb/Cubit/cubit.dart';
import 'package:untitled2/layout/NewsApi_btnb/Cubit/state.dart';
import 'package:untitled2/shared/components/components.dart';

class Business extends StatelessWidget {
  const Business({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
        listener: (context , state){},
        builder: (context , state){
          var list=NewsCubit.get(context).business;
          
          return ariclesBuilder(list);
        },
        );
  }
}
