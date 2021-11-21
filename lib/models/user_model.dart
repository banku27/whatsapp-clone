class UserModel {
  var name;
  var message;
  var time;
  var avatar;

  UserModel({this.name, this.message, this.time, this.avatar});
}

List<UserModel> chatData = [
  UserModel(
    name: "Pankaj",
    message: "This is my First Project",
    time: "16:30",
    avatar: "images/pankaj.jpg",
  ),
  UserModel(
    name: "Swatiiiii",
    message: "pankajjjjjjjj betiiiiiiii",
    time: "12:07",
    avatar: "images/swatiii.jpg",
  ),
  UserModel(
    name: "Deepak",
    message: "Kab aa rha hai?",
    time: "11:09",
    avatar: "images/deepak.jpg",
  ),
  UserModel(
    name: "Aman",
    message: "Op bhai",
    time: "11:00",
    avatar: "images/aman.jpg",
  ),
  UserModel(
    name: "Shruti",
    message: "SeRiOuSly",
    time: "10:19",
    avatar: "images/shruti.jpg",
  ),
  UserModel(
    name: "Bajrang",
    message: " I want 12 cgpa",
    time: "10:00",
    avatar: "images/bajrang.jpg",
  ),
  UserModel(
    name: "Aliena",
    message: "Mujhe nashik jaana hai",
    time: "9:50",
    avatar: "images/aliena.webp",
  ),
  UserModel(
    name: "Himani",
    message: "Spotify me movies dekh sakte hai kya banku?",
    time: "8:30",
    avatar: "images/himani.jpg",
  ),
  UserModel(
    name: "Professor",
    message: "Go and watch Money Heist",
    time: "8:15",
    avatar: "images/professor.jpg",
  ),
];
