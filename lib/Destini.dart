import 'package:flutter/material.dart';
import './ChoiceButton.dart';
import './RestartButton.dart';
import './destiny_brain.dart';

class Destini extends StatefulWidget {
  const Destini({Key? key}) : super(key: key);

  @override
  State<Destini> createState() => _DestiniState();
}

class _DestiniState extends State<Destini> {
  int storyNumber = 0;
  void onChoice1(){
    setState(() {
      storyNumber = stories[storyNumber].nextChoice1 ?? 0;
    });
  }
  void onChoice2(){
    setState(() {
      storyNumber = stories[storyNumber].nextChoice2 ?? 0;
    });
  }
  void restart(){
    setState(() {
      storyNumber = 0;
    });
  }
  Widget buttonsSelector(){
    if(stories[storyNumber].nextChoice1 == null) {
      return RestartButton(restart: restart);
    }
    return ChoiceButton(
        choice1: stories[storyNumber].choice1,
        choice2: stories[storyNumber].choice2,
        choice1click: onChoice1,
        choice2click: onChoice2,);
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(18),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 7,
                child:Center(
                  child: Text(
                    stories[storyNumber].storyTitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 25 , color: Colors.white),
                  ),
                )
            ),
            Expanded(flex: 4,child: buttonsSelector() ,),
          ],
        ),
      )
    );
  }
}

