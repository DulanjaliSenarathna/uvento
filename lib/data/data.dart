import 'package:uvento/models/date_model.dart';
import 'package:uvento/models/event_type_model.dart';
import 'package:uvento/models/events_model.dart';

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

List<EventTypeModel> getEventTypes(){

  List<EventTypeModel> events =  new  List();
  EventTypeModel eventModel = new EventTypeModel();

  //1
  eventModel.imgAssetPath = "assets/concert.png";
  eventModel.eventType = "Concert";
  events.add(eventModel);

  eventModel = new EventTypeModel();

  //2
  eventModel.imgAssetPath = "assets/sports.png";
  eventModel.eventType = "Sports";
  events.add(eventModel);

  eventModel = new EventTypeModel();

  //3
  eventModel.imgAssetPath = "assets/education.png";
  eventModel.eventType = "Education";
  events.add(eventModel);

  eventModel = new EventTypeModel();

 return events;
}

List<EventsModel> getEvents(){

  List<EventsModel> events = new List<EventsModel>();
  EventsModel eventsModel = new EventsModel();

  //1
  eventsModel.imageAssetPath = "assets/tileimg.png";
  eventsModel.date = "July 15, 2021";
  eventsModel.desc = "Sports";
  eventsModel.address = "New Town, Ratnapura";
  events.add(eventsModel);

  eventsModel = new EventsModel();

  //2
  eventsModel.imageAssetPath = "assets/music_event.png";
  eventsModel.date = "July 15, 2021";
  eventsModel.desc = "Arts";
  eventsModel.address = "New Town, Ratnapura";
  events.add(eventsModel);

  eventsModel = new EventsModel();

  //3
  eventsModel.imageAssetPath = "assets/second.png";
  eventsModel.date = "July 15, 2021";
  eventsModel.desc = "Music";
  eventsModel.address = "New Town, Ratnapura";
  events.add(eventsModel);

  eventsModel = new EventsModel();
  return events;

}