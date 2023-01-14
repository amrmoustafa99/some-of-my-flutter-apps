import 'package:flutter/cupertino.dart';
import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../layout/NewsApi_btnb/Cubit/cubit.dart';
import '../../layout/NewsApi_btnb/Cubit/state.dart';
import '../../shared/components/components.dart';

class Science extends StatelessWidget {
  const Science({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
      listener: (context , state){},
      builder: (context , state){
        var list=NewsCubit.get(context).science;

        return ariclesBuilder(list);
      },
    );
  }
}
