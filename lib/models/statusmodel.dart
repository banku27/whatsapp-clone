import 'package:flutter/material.dart';

class StatusModel {
  var name;
  var time;
  var avatar;

  StatusModel({
    this.name,
    this.time,
    this.avatar,
  });
}

List<StatusModel> statusData = [
  StatusModel(
    name: "Swatiiiii",
    time: "03:03",
    avatar: "images/swatiii.jpg",
  ),
  StatusModel(
    name: "Deepak",
    time: "11:09",
    avatar: "images/deepak.jpg",
  ),
  StatusModel(
    name: "Shruti",
    time: "11:00",
    avatar: "images/shruti.jpg",
  ),
  StatusModel(
    name: "Aliena",
    time: "08:30",
    avatar: "images/aliena.webp",
  ),
  StatusModel(
    name: "Bajrang",
    time: "07:30",
    avatar: "images/bajrang.jpg",
  ),
  StatusModel(
    name: "Himani",
    time: "07:05",
    avatar: "images/himani.jpg",
  ),
];
