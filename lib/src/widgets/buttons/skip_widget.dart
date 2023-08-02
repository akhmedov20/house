import 'package:flutter/cupertino.dart';

class SkipWidget extends StatelessWidget {
  final double width;
  final double height;
  final double textsize;
  final double circular;
  final Color color;
  final Color textcolor;
  final String text;
  const SkipWidget({Key? key, required this.width, required this.height, required this.circular, required this.color, required this.text, required this.textcolor, required this.textsize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(circular),
        color: color
      ),
      child: Center(child: Text(text,style: TextStyle(
        color: textcolor,fontSize: textsize
      ),),),
    );
  }
}
