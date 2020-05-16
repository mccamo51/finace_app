import 'package:financeapp/dashboard.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  List<double> _stops = [0.0, 0.7];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: <Widget>[
          ClipPath(
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.blue[900],
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: _stops
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 30,),
                  IconButton(icon: Icon(Icons.arrow_back, color: Colors.white,),onPressed: (){},),
                  SizedBox(height: 30,),
                 Padding(
                   padding: const EdgeInsets.only(left: 10.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                     Row(
                       children: <Widget>[
                         Container(height: 50,width: 50, child: Image.asset("assets/images/other/game.png", ),),
                         Text("eadith", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),)
                       ],
                     ),
                     SizedBox(height: 20,),
                   ],),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 15.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Text("Login", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),),
                       SizedBox(height: 10,),
                       Text("Please login to your existing Account", style: TextStyle(color: Colors.white, fontSize: 15, ),)

                     ],
                   ),
                 )
                ],
              ),

            ),
            clipper: CustomClipPath()
            ,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Email", style: TextStyle(fontWeight: FontWeight.bold),),
                TextField(
                  decoration: InputDecoration(hintText: "Enter Email here"),
                ),
                SizedBox(height: 30,),
                Text("Password", style: TextStyle(fontWeight: FontWeight.bold),),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: "Enter Password here"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text("Forgotten Password ?"),
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(30.0),
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
          },
          child: Container(
            height: 50,
            color: Colors.blue[900],
            child: Center(child: Text("Login", style: TextStyle(color: Colors.white),)),
          ),
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius=10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 1.5, size.height,
        size.width, size.height - 120);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
