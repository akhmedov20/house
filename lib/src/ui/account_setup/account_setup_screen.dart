import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:house/src/widgets/buttons/button_widget.dart';
import 'package:house/src/widgets/buttons/skip_widget.dart';

import '../../widgets/textstyle/textstyle.dart';

class AccountSetupScreen extends StatelessWidget {
  const AccountSetupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 34,),
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: SizedBox(
                width: 50,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)
                          )
                      )
                  ),
                  onPressed: (){},
                  child: Center(child: Icon(CupertinoIcons.left_chevron,size: 18,)),
                ),
              ),
            ),
            Spacer(),
            SkipWidget(width: 86, height: 38, circular: 20,
                color: Color(0xFFF5F4F8), text: "skip",
                textcolor: Colors.black, textsize: 12),
            SizedBox(width: 24,)
          ],),
          SizedBox(height: 51,),
          Row(children: [
            SizedBox(width: 24,),
            Text("Lokatsiya",style: Appstyle.twentyfourbold(Color(0xFF1F4C6B)),),
            SizedBox(width: 12,),
            Text("qo'shing",style: Appstyle.twentyfour(Color(0xFF1F4C6B)),),
          ],),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text("Buni keyinroq hisob sozlamalarida tahrirlashingiz mumkin.",style: Appstyle.twelve(Colors.black),),
          ),
          SizedBox(height: 33,),
          Container(
            margin: EdgeInsets.only(left: 24),
            width: 327,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(children: [
              Image.asset("assets/images/map.png"),
              Container(
                margin: EdgeInsets.only(top: 255),
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(255, 255, 255, 0.50)
                ),
                child: Center(child: Text("haritada tanlang",style: Appstyle.twelve(Color(0xFF252B5C)),)),
              )
            ],)


          ),
          SizedBox(height: 32,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFF5F4F8)
            ),
            child: Row(children: [
              SizedBox(width: 16,),
              Icon(Icons.location_on,color: Color(0xFF1F4C6B),),
              SizedBox(width: 15,),
              Text("Lokatsiya detallari",style: Appstyle.twelve(Color(0xFFA1A5C1)),),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.right_chevron,color: Color(0xFFA1A5C1),)),
              SizedBox(width: 10,)
            ],),
          ),
          SizedBox(height: 67,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
              width: 20,
              height: 2,
              color: Color(0xFF252B5C),
            ),
            Container(
              width: 80,
              height: 1,
              color: Color(0xFFA1A5C1),
            ),
          ],),
          SizedBox(height: 12,),
          Center(child: ButtonWidget(width: 278, height: 63, circular: 10, text:"Keyingisi", color: Color(0xFF8BC83F), textsize: 16,))
        ],
      ),
    );
  }
}
