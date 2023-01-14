
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(

       appBar: AppBar(
         backgroundColor: Colors.red,
         leading: Icon(
           Icons.menu,
         ),
         title: Text(
           'Amr',
         ),
         actions: [
           IconButton(onPressed: (){
             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
               content: Text("I'm notifications"),
             ));
           },
               icon: Icon(Icons.notifications,))
           ,
           IconButton(onPressed: (){
             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
               content: Text("I'm search"),
             ));
           },
               icon: Icon(Icons.search,)),

         ],
         centerTitle: true,
         elevation: 20,
       ),
       body: Container(
         child: SingleChildScrollView(
           child: Column(

             children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(20.0),
                        ),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image(
                          height: 200,
                            width: 200,
                            image: NetworkImage(
                            'https://play-lh.googleusercontent.com/ZqSUbqjoUmb-2MpPNkzvh9O0jBiOffhdocrZRwZ2Jliwy3TJ8DawPvjZx_AonSiw7e5p'
                            )

                        ),
                        Container(
                          width: 200,
                          color: Colors.black.withOpacity(0.6),
                          child: Text(
                              'Spongbop',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.amber
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
             ],
           ),
         ),
       )
     );
  }

}