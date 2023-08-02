import 'package:flutter/cupertino.dart';

class ButtonWidget extends StatelessWidget {
  final double width;
  final double height;
  final double circular;
  final double textsize;
  final String text;
  final Color color;
  const ButtonWidget({Key? key, required this.width, required this.height, required this.circular, required this.text, required this.color, required this.textsize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(circular)
      ),
      child: Center(child: Text(text,style: TextStyle(
        color: CupertinoColors.white,fontSize: textsize
      ),),),
    );
  }
}
