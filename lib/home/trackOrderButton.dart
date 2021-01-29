import 'package:flutter/material.dart';


class TrackOrderButton extends StatelessWidget {
  const TrackOrderButton({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          color: Colors.transparent,
          width: size.width,
          height: 60.0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Material(
              color: Color(0xff47AF30),
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
              child: Center(
                child: Text(
                  "Track Order",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

