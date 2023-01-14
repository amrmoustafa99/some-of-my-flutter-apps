import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/shared/components/components.dart';

class SearchNews extends StatelessWidget {
  const SearchNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var SearchController=TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: defualtTextField(
                controller: SearchController,
                type: TextInputType.text,
                validate: (value){
                  if(value.isEmpty){
                    return 'Search must not be empty';
                  }
                },
                lable: 'Search',
                onTap: (){},
              prefix: Icons.search,
            ),
          ),
        ],

      ),
    );
  }
}
