

import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';

Widget defualtButton({
  double width=double.infinity,
  double height=40.0,
  Color color=Colors.red,
  double radius=10.0,
  required VoidCallback function,
  required String text,

})=>Container(
  width: width,
  height: height,
  child: MaterialButton(
    child: Text(
      text,
      style:TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
      ),
    ),
    onPressed: function,

  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    color: color,
  ),
);

/*         TextButton  */
Widget defualtTextButton({
  Color textColor = Colors.blue,
  bool isBold = false,
  required String text,
  required VoidCallback function,
}) =>
    TextButton(
      onPressed: function,
      child: Text(
        text,
        style: TextStyle(
            color: textColor,
            fontWeight: !isBold ? FontWeight.normal : FontWeight.bold),
      ),
    );

/*         TextField  */

Widget defualtTextField({
  required TextEditingController controller,
  required TextInputType type,
  required FormFieldValidator validate,
  required String lable,
  required Function() onTap,
  bool enableClick = true,
  Color color = Colors.grey,
  double radius = 0.0,
  IconData? prefix,
  IconData? sufix,
}) =>
    Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: new BorderRadius.circular(10.0),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: type,
        //controller
        decoration: InputDecoration(
            labelText: lable,
            border: OutlineInputBorder(),
            prefixIcon: Icon(
              prefix,
            )),

        validator: validate,
        onTap: onTap,
        enabled: enableClick,
      ),
    );

Widget defualtTaskItem(Map model)=> Padding(
  padding: const EdgeInsets.all(10.0),
  child: Row(
    children: [
      CircleAvatar(
        radius: 35,
        child: Text('${model['time']}'),
      ),
      SizedBox(
        width: 10,
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('${model['title']}',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
          SizedBox(
            height: 5,
          ),
          Text('${model['date']}', style: TextStyle(color: Colors.grey),),
        ],
      )
    ],
  ),
);

Widget myDivider()=> Padding(
  padding: const EdgeInsetsDirectional.only(
      start: 20,
      end: 20
  ),
  child: Container(
    width: double.infinity,
    height: 1,
    color: Colors.grey[300],
  ),
);


  Widget buildArticleItem(article)=>Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(

      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage('${article['urlToImage']}'),
                fit: BoxFit.cover,
              )
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Container(
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              //   mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(

                  child: Text(
                    '${article['title']}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  '${article['publishedAt']}',
                  style: TextStyle(
                    color:Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ),



      ],
    ),
  );

  Widget ariclesBuilder(list)=>ConditionalBuilder(
    condition: list.length>0,
    builder: (context)=>ListView.separated(
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) =>buildArticleItem(list[index]),
      separatorBuilder: (context, index) => Padding(
        padding: const EdgeInsetsDirectional.only(
            start: 20,
            end: 20
        ),
        child: Container(
          width: double.infinity,
          height: 1,
          color: Colors.grey[300],
        ),
      ),
      itemCount: 6,

    ),
    fallback: (context)=>Center(child: CircularProgressIndicator()),
  );

  Future navigatorTO(context, widget)=>Navigator.push(context,
  MaterialPageRoute(builder: (context) => widget));



