import 'package:flutter/material.dart';

class RestartButton extends StatelessWidget {
  final void Function() restart;
  const RestartButton({Key? key, required this.restart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(flex: 1,child: Container() ,),
        Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
              child: TextButton(
                onPressed: restart,
                child: const Text("Restart" , textAlign: TextAlign.center),
              ),
            ),
        ),
        Expanded(flex: 1,child: Container() ,),
      ],
    );
  }
}
