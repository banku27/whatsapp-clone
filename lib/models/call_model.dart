import 'package:flutter/material.dart';

class CallModel {
  var name;
  var time;
  var avatar;
  var calltype;

  CallModel({this.name, this.time, this.avatar, this.calltype});

  static Icon callRecieved = Icon(
    Icons.call_received,
    size: 18,
    color: Colors.green,
  );

  static Icon callMissed = Icon(
    Icons.call_missed,
    size: 18,
    color: Colors.red,
  );
}

List<CallModel> callData = [
  CallModel(
    name: "Swatiiiii",
    time: "03:03",
    calltype: CallModel.callRecieved,
    avatar: "images/swatiii.jpg",
  ),
  CallModel(
    name: "Swatiiiii",
    time: "12:05",
    calltype: CallModel.callRecieved,
    avatar: "images/swatiii.jpg",
  ),
  CallModel(
    name: "Deepak",
    time: "11:09",
    calltype: CallModel.callMissed,
    avatar: "images/deepak.jpg",
  ),
  CallModel(
    name: "Shruti",
    time: "11:00",
    calltype: CallModel.callMissed,
    avatar: "images/shruti.jpg",
  ),
  CallModel(
    name: "Swatiiiii",
    time: "09:03",
    calltype: CallModel.callRecieved,
    avatar: "images/swatiii.jpg",
  ),
  CallModel(
    name: "Bajrang",
    time: "07:30",
    calltype: CallModel.callMissed,
    avatar: "images/bajrang.jpg",
  )
];
