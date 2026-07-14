import 'package:flutter/material.dart';

class AnswerModel {
  String title;
  VoidCallback onPerssed;
  AnswerModel({required this.onPerssed, required this.title});
}

