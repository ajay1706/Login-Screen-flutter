import 'package:flutter/material.dart';


class AppCard extends StatefulWidget {

  final Widget child;
  final Border borderStyle;
  final Color boxShadowColor;
  AppCard( {

    @required this.child,
    this.borderStyle,
    this.boxShadowColor
  });
  @override
  _AppCardState createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        new Card(
          margin: EdgeInsets.all(20),
          color: Colors.white,
          child: new Container(
            padding: EdgeInsets.all(20),
            child: widget.child,
            decoration: BoxDecoration(
              color: Colors.white,
              border: widget.borderStyle ??
              Border.all(color: Colors.black,
              width: 2),
              boxShadow: [
BoxShadow(
  color: widget.boxShadowColor ??
  Colors.black,
  offset: Offset(10.0,10.0)
)


              ]
            ),
          ),
        )
      ],
      
    );
  }
}
