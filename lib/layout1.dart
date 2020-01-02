import 'package:flutter/material.dart';

class IntroWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    Widget titleWidget =  Text('this is a pic');
    Widget contentTeext = Text('''
    this picter is a meringue_based dssert named after this Russian ballenrine Anna Pavlova.
    ''');
    Widget starWidget=Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(Icons.star,),
        Icon(Icons.star,),
        Icon(Icons.star,),
        Icon(Icons.star,),
        Icon(Icons.star,),

      ],
    );


    return null;
  }

  Widget buildItems(IconData iconData,String title,String data){
    return Column(
      children: <Widget>[
        Icon(iconData),
        Text(title,style: TextStyle(color: Colors.grey[500] ,fontSize:12 ),),
        Container(child: Text(data,style: TextStyle(color: Colors.grey[500],fontSize: 13)),)
      ],
    );
  }

}