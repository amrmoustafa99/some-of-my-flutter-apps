
import 'package:flutter/material.dart';

class MessangerScreen2 extends StatelessWidget {
  const MessangerScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/85084576?v=4'),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Chats',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),



        actions: [
          IconButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("this is Camera My broo"),
            ));
          },
              icon: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.blue,
                ),
              )),
          IconButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("this is Edit my broo"),
            ));
          },
              icon: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.edit,
                  color: Colors.blue,
                ),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(

                    children: [
                      Icon(Icons.search_rounded,),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Search'),
                    ],
                  ),
                ),
              ),
              Container(
                height: 120,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index)=>buildStroryItem(),

                    separatorBuilder: (context, index)=>SizedBox(
                      width: 4,
                    ),
                    itemCount: 5,
                ),
              ),

              ListView.separated(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index)=> builChatItem(),
                  separatorBuilder: (context, index)=>SizedBox(
                    height: 5,
                  ),
                  itemCount: 10),
            ],


          ),
        ),
      ),

    );
  }

 Widget buildStroryItem(){
    return   Row(
   children: [
   Padding(
   padding: const EdgeInsets.all(10.0),
   child: Container(
   width: 55,
   child: Column(
   children: [
   Stack(
   alignment: AlignmentDirectional.bottomEnd,
   children: [
   CircleAvatar(
   radius: 30,
   backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/71897736?v=4'),
   ),
   Padding(
   padding: const EdgeInsetsDirectional.only(
   bottom: 3,
   end: 3,
   ),
   child: CircleAvatar(
   radius: 7.5,
   backgroundColor: Colors.white,
   ),
   ),
   Padding(
   padding: const EdgeInsetsDirectional.only(
   bottom: 3,
   end: 3,),
   child: CircleAvatar(
   radius: 7.0,
   backgroundColor: Colors.green,
   ),
   ),

   ],
   ),
   SizedBox(
   height: 5,
   ),
   Text(
   'Eliaz Bobadilla',
   style: TextStyle(
   color: Colors.white,
   ),
   maxLines: 2,
   overflow: TextOverflow.ellipsis,
   ),
   ],
   ),
   ),
   ),



   ],
   );
  }

  Widget builChatItem(){
    return    Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/85084576?v=4'),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3,
                end: 3,
              ),
              child: CircleAvatar(
                radius: 7.5,
                backgroundColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3,
                end: 3,),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              ),
            ),

          ],
        ),
        SizedBox(
          width:10 ,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Amr Moustafa',

                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'what\'s up my bro , What are you doing now',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: Colors.blue,
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Text(
                    '02:55 pm',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
