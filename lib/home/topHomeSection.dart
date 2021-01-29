import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopHomeSection extends StatelessWidget {
  const TopHomeSection({
    Key key,
    @required this.size,
    @required TextEditingController searchController,
    @required this.menuAsset,
  }) : _searchController = searchController, super(key: key);

  final Size size;
  final TextEditingController _searchController;
  final String menuAsset;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.schedule,
              color: Color(0xff95989A),
              size: 20.0,
            ),
            Text(
              " Deliver now, to",
              style: TextStyle(
                color: Color(0xff95989A),
                fontSize: 14.0,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "53, Awolowo Road, Ikoyi",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Icon(
                    Icons.expand_more,
                    color: Color(0xffFF0000),
                  ),
                ),
              ],
            ),
            Container(
              height: 34,
              width: 34.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffF3F4F6),
              ),
              child: Center(
                child: Icon(
                  Icons.person,
                  color: Color(0xffFF0000),
                ),
              ),
            ),
          ],
        ),
         Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Container(
                  width: size.width,
                  child: Material(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Color(0xffF3F4F6),
                    child: ListTile(
                      title: TextFormField(
                          controller: _searchController,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            alignLabelWithHint: true,
                            hintText: "What are you craving?",
                            hintStyle: TextStyle(color: Color(0xff95989A), fontSize: 14.0, fontWeight: FontWeight.normal,),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xff95989A),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                    ),
                    ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: SvgPicture.asset(menuAsset, height: 15.98, width: 19.77,),
              )
            ]
          ),
        ) ,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(child: Text("Est. delivery time: 35mins", style: TextStyle(color: Color(0xff95989A), fontSize: 14.0),),),
            Flexible(child: Text("Your first delivery is FREE!", style: TextStyle(color: Color(0xff95989A), fontSize: 14.0),),),
          ],
        ),
      ],
    );
  }
}
