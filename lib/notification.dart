import 'package:financeapp/model/model.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<NotificationModel> notifyList = [
    NotificationModel(
        image: "assets/images/avatar-2.png",
        message: "You have received a payment of \$120.00 from John Smith",
        time: "8:39 AM",
        request: false),
    NotificationModel(
        image: "assets/images/avatar-4.png",
        message: "You have received a payment of \$120.00 from John Smith",
        time: "8:39 AM",
        request: true)
  ];

  bool request = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF2F4F7),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xffF2F4F7),
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          title: Text(
            "Notification",
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: notifyList.length,
            itemBuilder: (context, index) {
              final items = notifyList[index];
              return Dismissible(
                  direction: DismissDirection.endToStart,
                  key: ObjectKey(items),
                  onDismissed: ((direction){
                    setState(() {
                      notifyList.removeAt(index);
                    });
                  }),
                  background: Container(
                    padding: EdgeInsets.only(left: 28.0),
                    alignment: AlignmentDirectional.centerEnd,
                    color: Colors.red,
                    child: Icon(Icons.delete_forever, color: Colors.white,),
                  ),
                  // Provide a function that tells the app
                  // what to do after an item has been swiped away.

                  child: tile(
                      notifyList[index].request,
                      notifyList[index].image,
                      notifyList[index].message,
                      notifyList[index].time,
                      context));
            }));
  }

  Widget tile(bool request, String image, String message, String time,
      BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        height: 120,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(image),
                backgroundColor: Colors.transparent,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(message),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            time,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              request
                  ? Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(colors: [
                            Color(0xffFF8993),
                            Color(0xffFEC180),
                          ], stops: [
                            0.0,
                            1.3
                          ])),
                      child: Center(
                          child: Text(
                        "Pay",
                        style: TextStyle(color: Colors.white),
                      )),
                    )
                  : Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.20,
                    )
            ],
          ),
        ),
      ),
    );
  }
}
