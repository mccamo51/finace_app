import 'package:flutter/material.dart';

import 'onBoardThree.dart';

class OnBoardingTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xffFEC180),
                  Color(0xffFF8993),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [-0.7, 0.7]
            )
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 50,),
            Row(
              children: <Widget>[
                Container(
                  height: 60,
                  width: 60,
                  child: Image.asset("assets/images/other/gamee.png"),
                ),
                Text("eadith", style: TextStyle(color: Colors.white,fontSize: 25, fontWeight: FontWeight.bold),)
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.56,
              child:  Image.asset("assets/images/other/group.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Your Savings Account", style: TextStyle(color: Colors.white, fontSize: 30),),
                  SizedBox(height: 10,),
                  Text("Earn attractive rate.Grow your savings with up to 6% interest.Opening a savings account online have never been easier.", style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.left,)
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(0xffFF8993),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBoardingThree()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("Next", style: TextStyle(color: Colors.white, fontSize: 20),),
                Icon(Icons.arrow_forward, color: Colors.white,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
