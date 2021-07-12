import 'package:flutter/material.dart';
import 'package:uvento/data/data.dart';

import 'models/date_model.dart';
import 'models/event_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<DateModel> dates = new List<DateModel>();
  List<EventModel> events =  new  List();
  String todayDateIs = "12";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dates = getDates();
    events = getEvents();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Color(0xff102733)
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical:60 ,horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget> [
                      Image.asset("assets/logo.png",height: 28,),
                      SizedBox(width:8 ,),
                      Row(
                        children: <Widget> [
                          Text("EVE", style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w800
                          ),),
                          Text("NTO", style: TextStyle(
                            color: Color(0xFFFDD835),
                            fontSize: 22,
                            fontWeight: FontWeight.w800
                          ),),
                        ],
                      ),
                      Spacer(),
                      Image.asset("assets/notify.png",height: 22,),
                      SizedBox(width:16 ,),
                      Image.asset("assets/menu.png",height: 22,)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget> [
                          Text("Hello, Dulanjali!",style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 21
                          ),),
                          SizedBox(height: 6,),
                          Text("Let's explore what's happening nearby",style: TextStyle(
                            color: Colors.white,
                            fontSize: 15
                          ),)
                        ],
                      ),
                      Spacer(),
                      Container(
                        child: Image.asset("assets/profile.jpeg",height: 30,),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),

                  //Dates
                  Container(
                    height: 60,
                    child: ListView.builder(
                        itemCount: dates.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder:(context,index){
                          return DateTile(
                            weekDay: dates[index].weekDay,
                            date: dates[index].date,
                            isSelected: todayDateIs == dates[index].date,
                          );
                        }),
                  ),

                  //Events
                  SizedBox(height: 16,),
                  Text("All events", style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),),
                  Container(

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DateTile extends StatelessWidget {

  String weekDay, date;
  bool isSelected;
  DateTile({this.weekDay,this.date,this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xffFCCD00) : Colors.transparent ,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(date, style: TextStyle(
            color: isSelected ? Colors.black : Colors.white,
            fontWeight: FontWeight.w600
          ),),
          SizedBox(height: 10,),
          Text(weekDay, style: TextStyle(
              color: isSelected ? Colors.black : Colors.white,
              fontWeight: FontWeight.w600
          ),
          )
        ],
      ),
    );
  }
}

class EventTile extends StatelessWidget {

  String imgAssetPath,eventType;
  EventTile({this.eventType,this.imgAssetPath});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff29404E),
      child: Column(
        children: <Widget>[
          Image.asset("assets/concert.png",height: 40,),
          SizedBox(height: 8,),
          Text("Concert", style: TextStyle(
            color: Colors.white,
          ),),
        ],
      ),
    );
  }
}


