import 'package:uvento/models/date_model.dart';
import 'package:uvento/models/event_model.dart';

List<DateModel> getDates(){

  List<DateModel> dates = new List<DateModel>();
  DateModel dateModel = new DateModel();

  //1
  dateModel.date = "10";
  dateModel.weekDay= "Sun";
  dates.add(dateModel);

  dateModel = new DateModel();

  //2
  dateModel.date = "11";
  dateModel.weekDay= "Mon";
  dates.add(dateModel);

  dateModel = new DateModel();

  //3
  dateModel.date = "12";
  dateModel.weekDay= "Tue";
  dates.add(dateModel);

  dateModel = new DateModel();

  //4
  dateModel.date = "13";
  dateModel.weekDay= "Wed";
  dates.add(dateModel);

  dateModel = new DateModel();

  //5
  dateModel.date = "14";
  dateModel.weekDay= "Thu";
  dates.add(dateModel);

  dateModel = new DateModel();

  //6
  dateModel.date = "15";
  dateModel.weekDay= "Fri";
  dates.add(dateModel);

  dateModel = new DateModel();

  //7
  dateModel.date = "16";
  dateModel.weekDay= "Sat";
  dates.add(dateModel);

  dateModel = new DateModel();

  return dates;



}

List<EventModel> getEvents(){

  List<EventModel> events =  new  List();
  EventModel eventModel = new EventModel();

  //1
  eventModel.imgAssetPath = "assets/concert.png";
  eventModel.eventType = "Concert";
  events.add(eventModel);

  eventModel = new EventModel();

  //2
  eventModel.imgAssetPath = "assets/sports.png";
  eventModel.eventType = "Sports";
  events.add(eventModel);

  eventModel = new EventModel();

  //3
  eventModel.imgAssetPath = "assets/education.png";
  eventModel.eventType = "Education";
  events.add(eventModel);

  eventModel = new EventModel();

 return events;
}