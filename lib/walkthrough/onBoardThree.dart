import 'package:financeapp/getsatrted.dart';
import 'package:flutter/material.dart';

class OnBoardingThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xff34EBE9),
                  Colors.blue[900],
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
              child:  Image.asset("assets/images/other/stand.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Manage Finance", style: TextStyle(color: Colors.white, fontSize: 30),),
                  SizedBox(height: 10,),
                  Text("Managing money and handling investment decisions are easier than ever before .Tracking your spending and getting smart about your money", style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.left,)
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.blue[900],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>GetStarted()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("Proceed", style: TextStyle(color: Colors.white, fontSize: 20),),
                Icon(Icons.arrow_forward, color: Colors.white,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
