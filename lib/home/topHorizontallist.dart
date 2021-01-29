import 'package:flutter/material.dart';

class HorizontalImageList extends StatelessWidget {
  const HorizontalImageList({
    Key key,
    @required this.imageList,
  }) : super(key: key);

  final List<String> imageList;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(vertical: 10.0),
       child: Container(
         height: 200.0,
         child: ListView.builder(
           scrollDirection: Axis.horizontal,
           shrinkWrap: true,
           itemCount: imageList.length,
           itemBuilder: (context, index) => Padding(
             padding: const EdgeInsets.only(right: 10.0),
             child: Container(
               //height: 200.0,
               width: 320.0,
               decoration: BoxDecoration(
                 
                 image: DecorationImage(
                   image: AssetImage(imageList[index]),
                   fit: BoxFit.fill,
                 )
               ),
             ),
           ),
         ),
       ),
    );
  }
}

