import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
class ViewData extends StatefulWidget {
  const ViewData({Key? key}) : super(key: key);

  @override
  State<ViewData> createState() => _ViewDataState();

}


class _ViewDataState extends State<ViewData> {

  List photos=[];
  var title;
  var urlImag;


   Future getPost() async {
     var url = "https://newsapi.org/v2/everything?q=tesla&from=2022-11-29&sortBy=publishedAt&apiKey=d4ca56842db04cc8b8e36ae5627531dd";
     var response = await http.get(Uri.parse(url));
     var resBody = jsonDecode(response.body); // as a list

     var objectArticels=resBody['articles'];
     var oneRow=objectArticels[0];


     setState(() {
      // photos.addAll(resBody);
        title=oneRow['title'];
        urlImag=oneRow['urlToImage'];
     });

     print(title+" " +urlImag);
   }


  @override
  void initState() {
    getPost();
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          children: [

            Container(
                height: 120,
                width: 120,
                child: Image.network('${urlImag}')),
            SizedBox(
              height: 20,
            ),
            Text(
              '${title}'
            )


          ],
        )
      ),

    );
  }


}
