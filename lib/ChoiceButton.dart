import 'package:flutter/material.dart';

class ChoiceButton extends StatelessWidget {
  final String choice1;
  final String choice2;
  final void Function() choice1click;
  final void Function() choice2click;
  const ChoiceButton({Key? key, required this.choice1, required this.choice2, required this.choice1click, required this.choice2click}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue[800],
              child: TextButton(
                onPressed: choice1click,
                child: Text(choice1),
              ),
            ),
        ),
        const SizedBox(height: 10,),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.red[800],
            child: TextButton(
              onPressed: choice2click,
              child: Text(choice2),
            ),
          ),
        ),
      ],
    );
  }
}
