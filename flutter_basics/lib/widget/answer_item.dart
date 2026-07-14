import 'package:flutter/material.dart';
import 'package:flutter_basics/models/answer_model.dart';

class AnswerItem extends StatelessWidget {
  AnswerModel answerModel;
  VoidCallback changeShow;
  bool changeColor;
  AnswerItem({
    super.key,
    required this.answerModel,
    required this.changeShow,
    required this.changeColor,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:8 , horizontal:30),
        child: SizedBox(
          height: 80,
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: changeColor ? Colors.green : const Color.fromARGB(255, 255, 255, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: const Color.fromARGB(58, 44, 40, 40),width: 1)
              ),
            ),
            onPressed: () {
              answerModel.onPerssed();
              changeShow();
            },
            child: Row(
              children: [
                Icon(
                  Icons.add,
                  size: 20,
                  color: changeColor ? Colors.white : const Color.fromARGB(255, 0, 0, 0),
                ),
                SizedBox(width: 20),
                Text(
                  answerModel.title,
                  style: TextStyle(
                    color: changeColor ? Colors.white :const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 26,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
