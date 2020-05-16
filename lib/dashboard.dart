import 'package:financeapp/notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F4F7),
      appBar: AppBar(
        backgroundColor: Color(0xffF2F4F7),
        title: Text("Dashboard", style: TextStyle(color: Colors.black),),
        leading: IconButton(icon: Icon(FeatherIcons.menu),),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.notifications_none, color: Colors.black, size: 30,),onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Notifications()));
          },),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("List of Account", style: TextStyle(letterSpacing: 1.0, fontSize: 20),),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 90,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [
                              Color(0xffA254F2),
                              Color(0xffEFBAD3),
                            ],
                            stops: [0.0, 1.3]
                        )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Credit Crad",
                          style: TextStyle(color: Colors.white, fontSize: 15),),
                        SizedBox(height: 10,),
                        Text('\$2,000.00', style: TextStyle(
                            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),)
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [
                              Color(0xffFF8993),
                              Color(0xffFEC180),
                            ],
                            stops: [0.0, 1.5]
                        )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Credit Crad",
                          style: TextStyle(color: Colors.white, fontSize: 15),),
                        SizedBox(height: 10,),
                        Text('\$2,000.00', style: TextStyle(
                            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),)
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [
                              Color(0xff34EBE9),
                              Color(0xffD0FFAE),
                            ],
                            stops: [0.0, 1.3]
                        )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Cash",
                          style: TextStyle(color: Colors.white, fontSize: 15),),
                        SizedBox(height: 10,),
                        Text('\$800.00', style: TextStyle(
                            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),)
                      ],
                    ),
                  ),


                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: <Widget>[
                 Image.asset("assets/images/shadow-card.png"),
                  Positioned(

                    child:  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:
                      Container(
                        height: MediaQuery.of(context).size.height * 0.13,
                        width: MediaQuery.of(context).size.width * 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("\$180,000.00", style: TextStyle(
                              color: Colors.redAccent, fontWeight: FontWeight.w500, fontSize: 30
                            ),),
                            SizedBox(height: 10,),
                            Text("Total Balance", style: TextStyle(color: Colors.grey, fontSize: 20),)
                          ],
                        ),
                      ),),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Last Record Overview", style: TextStyle(letterSpacing: 1.0, fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Card(
                        child: Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width * 0.90,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20.0, right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 60.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Groceries", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
                                        SizedBox(height: 5,),
                                        Text("Credit Card", style: TextStyle(color: Colors.grey),)
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text("Today", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.grey),),
                                      SizedBox(height: 5,),
                                      Text("\$250.00", style: TextStyle(color: Colors.redAccent),)
                                    ],
                                  ),
                                ],
                              ),
                            )
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    top: 12,
                    bottom: 13.0,
                    left: 0.0,
                    child: Container(
                      height: 50,
                      width: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          gradient: LinearGradient(
                              colors: [
                                Color(0xffFF8993),
                                Color(0xffFEC180),
                              ],
                              stops: [0.0, 1.3]
                          )
                      ),
                      child: Icon(Icons.shopping_cart, color: Colors.white,)
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Card(
                        child: Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width * 0.90,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20.0, right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 60.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Clothes", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
                                        SizedBox(height: 5,),
                                        Text("Credit Card", style: TextStyle(color: Colors.grey),)
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text("30/12/2020", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.grey),),
                                      SizedBox(height: 5,),
                                      Text("\$250.00", style: TextStyle(color:Color(0xffA254F2)),)
                                    ],
                                  ),
                                ],
                              ),
                            )
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    top: 12,
                    bottom: 13.0,
                    left: 0.0,
                    child: Container(
                      height: 50,
                      width: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          gradient: LinearGradient(
                              colors: [
                                Color(0xffA254F2),
                                Color(0xffEFBAD3),
                              ],
                              stops: [0.0, 1.3]
                          )
                      ),
                        child: Icon(Icons.message, color: Colors.white,)

                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Card(
                        child: Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width * 0.90,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20.0, right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 60.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Car Rentals", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
                                        SizedBox(height: 5,),
                                        Text("Credit Card", style: TextStyle(color: Colors.grey),)
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text("10/12/1999", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.grey),),
                                      SizedBox(height: 5,),
                                      Text("\$250.00", style: TextStyle(color: Color(0xff34EBE9),),)
                                    ],
                                  ),
                                ],
                              ),
                            )
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    top: 12,
                    bottom: 13.0,
                    left: 0.0,
                    child: Container(
                      height: 50,
                      width: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          gradient: LinearGradient(
                              colors: [
                                Color(0xff34EBE9),
                                Color(0xffD0FFAE),
                              ],
                              stops: [0.0, 1.3]
                          )
                      ),
                        child: Icon(Icons.shopping_cart, color: Colors.white,)

                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
