import 'package:financeapp/login.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F4F7),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                height: 200,
                width: 200,
                child: new AspectRatio(
                  aspectRatio: 300 / 300,
                  child: new Container(
                    decoration: new BoxDecoration(
                        image: new DecorationImage(
                          fit: BoxFit.fitWidth,
                          alignment: FractionalOffset.bottomCenter,
                          image: new AssetImage('assets/images/other/games.png'),
                        )
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 100,),
          Column(
            children: <Widget>[
              Text("Hello!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text("Please login by using given credentials \nand enjoy your workplace.", textAlign: TextAlign.center,),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                },
                child: Container(
                  height: 50,
                  color: Colors.blue[900],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 30, width: 30, child: Image.asset("assets/images/other/open.png"),),
                      Text("Login", style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text("New here ? Become a client")
          ],
        ),
      ),
    );
  }
}
