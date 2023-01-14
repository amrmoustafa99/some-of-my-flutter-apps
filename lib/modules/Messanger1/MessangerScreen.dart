
import 'package:flutter/material.dart';

class MessangerScreen extends StatelessWidget {
  const MessangerScreen({Key? key}) : super(key: key);

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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
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
                                backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/89775852?v=4'),
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
                            'DavisDavisDavis',
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
                                backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/17373050?v=4'),
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
                            'Moataz Mohammady',
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
                                backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/63899044?v=4'),
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
                            'Phuong Nguyen',
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
                                backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/89560626?v=4'),
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
                            'Abdulelah',
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
                                backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/71227785?v=4'),
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
                            'Valentin',
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
                                backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/8299767?v=4'),
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
                            'Desperado',
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
                            height: 5,
                          ),
                          Text(
                            'Amr Moustafa',
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
                                backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/36940678?v=4'),
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
                            'Eman Saeed',
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
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
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
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/86024158?v=4'),
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
                                'Mohamed Said yemlahi',

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
                                      'What are you doing now? ',
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
                                    '09:12 pm',
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
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/69767?v=4'),
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
                                'Andrey Esin',

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
                                      'Hi',
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
                                    '12:05 am',
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
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/17373050?v=4'),
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
                                'Moataz Mohammady',

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
                                      '"Hello, World!"',
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
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/85769349?v=4'),
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
                                'Iago Rocha',

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
                                      '✌',
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

                                  SizedBox(
                                    width: 60,
                                  ),
                                  Text(
                                    '08:01 pm',
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
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/75806463?v=4'),
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
                                'Gael',

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
                                      'Hi My broo',
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
                                    '12:34 am',
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
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/93306259?v=4'),
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
                                'Mohamed khalid',

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
                                      'Yes this is my page',
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
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/44965145?v=4'),
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
                                'Anas Elgarhy',

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
                                      'I\'m Anas ',
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
                                    'yesterday',
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
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/90819588?v=4'),
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
                                'Ibrahim ALi',

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
                                      '😍😍',
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
                                    'yesterday',
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
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
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
                                'Amr Moustafa Mahrous Ahmed Ahmed',

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
                                    'yesterday',
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
                    ),
                    SizedBox(
                      height: 10,
                    ),

                  ],
                ),
              ),
            ),
          ],


        ),
      ),

    );
  }
}
