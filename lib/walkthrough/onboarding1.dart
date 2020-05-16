import 'package:financeapp/walkthrough/onboard2.dart';
import 'package:flutter/material.dart';

class OnBoardingOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffEFBAD3),
                Color(0xffA254F2),
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
               child:  Image.asset("assets/images/other/illustrator.png"),
             ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Your Everyday Payment", style: TextStyle(color: Colors.white, fontSize: 30),),
                    SizedBox(height: 10,),
                    Text("Designed to bring convenience into your everyday life. Allowing its users to make payments (send, receive and spend money with ease)", style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.left,)
                  ],
                ),
              )
            ],
          ),
        ),
      bottomNavigationBar: Container(
        color: Color(0xffA254F2),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBoardingTwo()));
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
