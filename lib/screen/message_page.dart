import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  static const styleSender = BubbleStyle(
    margin: const BubbleEdges.only(top: 10),
    alignment: Alignment.topLeft,
    nip: BubbleNip.leftTop,
  );
  static const styleReciever = BubbleStyle(
    margin: const BubbleEdges.only(top: 2),
    alignment: Alignment.topRight,
    nip: BubbleNip.rightTop,
  );
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Bubble(
          alignment: Alignment.center,
          color: const Color.fromRGBO(212, 234, 244, 1),
          child: const Text('TODAY',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 11)),
        ),
        Bubble(
          style: styleReciever,
          color: const Color.fromRGBO(225, 255, 199, 1),
          child: const Text('Hello world!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleReciever,
          showNip: false,
          color: const Color.fromRGBO(225, 255, 199, 1),
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          child: const Text('Hi, developer!'),
        ),
        Bubble(
          style: styleSender,
          showNip: false,
          child: const Text('This is my First Project'),
        ),
      ],
    );
  }
}
