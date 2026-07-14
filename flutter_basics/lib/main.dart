import 'package:flutter/material.dart';
import 'package:flutter_basics/models/answer_model.dart';
import 'package:flutter_basics/models/question_model.dart';
import 'package:flutter_basics/widget/answer_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<int> selectedAnswers = List.filled(questions.length, -1);
  int indexOfQuestion = 0;
  int totalScore = 0;
  bool finished = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: finished
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Thanks For Answering ",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 30),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          finished = false;
                          indexOfQuestion = 0;
                          totalScore = 0;
                          selectedAnswers = List.filled(questions.length, -1);
                        });
                      },
                      child: const Text("Reset Quiz"),
                    ),
                  ],
                ),
              )
            : SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text(
                        questions[indexOfQuestion].title,
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 15),

                      Text(
                        "${indexOfQuestion + 1}/${questions.length}",
                        style: const TextStyle(fontSize: 20),
                      ),

                      const SizedBox(height: 20),

                      Column(
                        children: List.generate(
                          questions[indexOfQuestion].answersOfQuestion.length,
                          (index) => AnswerItem(
                            answerModel: questions[indexOfQuestion]
                                .answersOfQuestion[index],
                            changeColor:
                                selectedAnswers[indexOfQuestion] == index,
                            changeShow: () {
                              setState(() {
                                selectedAnswers[indexOfQuestion] = index;

                                totalScore++;
                              });
                            },
                          ),
                        ),
                      ),

                      const Spacer(),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 150,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              onPressed: () {
                                if (indexOfQuestion > 0) {
                                  setState(() {
                                    indexOfQuestion--;
                                  });
                                } else {
                                  setState(() {
                                    indexOfQuestion = questions.length - 1;
                                  });
                                }
                              },
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.arrow_back),
                                  SizedBox(width: 8),
                                  Text("Previous"),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 150,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              onPressed: () {
                                if (indexOfQuestion < questions.length - 1) {
                                  setState(() {
                                    indexOfQuestion++;
                                  });
                                } else {
                                  setState(() {
                                    finished = true;
                                  });
                                }
                                ;
                              },
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Next"),
                                  SizedBox(width: 8),
                                  Icon(Icons.arrow_forward),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
