import 'package:flutter/material.dart';
import 'package:flutter_basics/models/answer_model.dart';

class QuestionModel {
  String title;
  List<AnswerModel> answersOfQuestion;
  QuestionModel({required this.answersOfQuestion, required this.title});
}

List<QuestionModel> questions = [
  QuestionModel(
    title: 'What is your favorite sport?',
    answersOfQuestion: [
      AnswerModel(title: 'Football', onPerssed: () => debugPrint('Football')),
      AnswerModel(title: 'Basketball', onPerssed: () => debugPrint('Basketball')),
      AnswerModel(title: 'Tennis', onPerssed: () => debugPrint('Tennis')),
      
    ],
  ),

  QuestionModel(
    title: 'What is your favorite color?',
    answersOfQuestion: [
      AnswerModel(title: 'Blue', onPerssed: () => debugPrint('Blue')),
      AnswerModel(title: 'Black', onPerssed: () => debugPrint('Black')),
      AnswerModel(title: 'White', onPerssed: () => debugPrint('White')),
    ],
  ),

  QuestionModel(
    title: 'What is your favorite animal?',
    answersOfQuestion: [
      AnswerModel(title: 'Cat', onPerssed: () => debugPrint('Cat')),
      AnswerModel(title: 'Dog', onPerssed: () => debugPrint('Dog')),
    ],
  ),

  QuestionModel(
    title: 'What is your favorite season?',
    answersOfQuestion: [
      AnswerModel(title: 'Summer', onPerssed: () => debugPrint('Summer')),
      AnswerModel(title: 'Winter', onPerssed: () => debugPrint('Winter')),
      AnswerModel(title: 'Spring', onPerssed: () => debugPrint('Spring')),
      AnswerModel(title: 'Autumn', onPerssed: () => debugPrint('Autumn')),
    ],
  ),

  QuestionModel(
    title: 'Which programming language do you like?',
    answersOfQuestion: [
      AnswerModel(title: 'Dart', onPerssed: () => debugPrint('Dart')),
      AnswerModel(title: 'Java', onPerssed: () => debugPrint('Java')),
      AnswerModel(title: 'C++', onPerssed: () => debugPrint('C++')),
      AnswerModel(title: 'Python', onPerssed: () => debugPrint('Python')),
    ],
  ),

  QuestionModel(
    title: 'What is your favorite food?',
    answersOfQuestion: [
      AnswerModel(title: 'Pizza', onPerssed: () => debugPrint('Pizza')),
      AnswerModel(title: 'Burger', onPerssed: () => debugPrint('Burger')),
      AnswerModel(title: 'Rice', onPerssed: () => debugPrint('Rice')),
    ],
  ),

  QuestionModel(
    title: 'What is your favorite drink?',
    answersOfQuestion: [
      AnswerModel(title: 'Tea', onPerssed: () => debugPrint('Tea')),
      AnswerModel(title: 'Coffee', onPerssed: () => debugPrint('Coffee')),
      AnswerModel(title: 'Juice', onPerssed: () => debugPrint('Juice')),
      AnswerModel(title: 'Water', onPerssed: () => debugPrint('Water')),
    ],
  ),

  QuestionModel(
    title: 'Which mobile OS do you prefer?',
    answersOfQuestion: [
      AnswerModel(title: 'Android', onPerssed: () => debugPrint('Android')),
      AnswerModel(title: 'iOS', onPerssed: () => debugPrint('iOS')),
    ],
  ),

  QuestionModel(
    title: 'What is your favorite movie genre?',
    answersOfQuestion: [
      AnswerModel(title: 'Action', onPerssed: () => debugPrint('Action')),
      AnswerModel(title: 'Comedy', onPerssed: () => debugPrint('Comedy')),
      AnswerModel(title: 'Drama', onPerssed: () => debugPrint('Drama')),
      AnswerModel(title: 'Horror', onPerssed: () => debugPrint('Horror')),
    ],
  ),

  QuestionModel(
    title: 'Which pet would you like?',
    answersOfQuestion: [
      AnswerModel(title: 'Cat', onPerssed: () => debugPrint('Cat')),
      AnswerModel(title: 'Dog', onPerssed: () => debugPrint('Dog')),
      AnswerModel(title: 'Bird', onPerssed: () => debugPrint('Bird')),
      AnswerModel(title: 'Fish', onPerssed: () => debugPrint('Fish')),
    ],
  ),

  QuestionModel(
    title: 'What is your favorite fruit?',
    answersOfQuestion: [
      AnswerModel(title: 'Apple', onPerssed: () => debugPrint('Apple')),
      AnswerModel(title: 'Banana', onPerssed: () => debugPrint('Banana')),
      AnswerModel(title: 'Orange', onPerssed: () => debugPrint('Orange')),
      AnswerModel(title: 'Mango', onPerssed: () => debugPrint('Mango')),
    ],
  ),

  QuestionModel(
    title: 'Which continent would you like to visit?',
    answersOfQuestion: [
      AnswerModel(title: 'Asia', onPerssed: () => debugPrint('Asia')),
      AnswerModel(title: 'Europe', onPerssed: () => debugPrint('Europe')),
      AnswerModel(title: 'Africa', onPerssed: () => debugPrint('Africa')),
      AnswerModel(title: 'America', onPerssed: () => debugPrint('America')),
    ],
  ),

  QuestionModel(
    title: 'What is your favorite subject?',
    answersOfQuestion: [
      AnswerModel(title: 'Math', onPerssed: () => debugPrint('Math')),
      AnswerModel(title: 'Physics', onPerssed: () => debugPrint('Physics')),
      AnswerModel(title: 'Programming', onPerssed: () => debugPrint('Programming')),
      AnswerModel(title: 'English', onPerssed: () => debugPrint('English')),
    ],
  ),

  QuestionModel(
    title: 'What is your favorite game?',
    answersOfQuestion: [
      AnswerModel(title: 'Football', onPerssed: () => debugPrint('Football')),
      AnswerModel(title: 'Chess', onPerssed: () => debugPrint('Chess')),
      AnswerModel(title: 'PUBG', onPerssed: () => debugPrint('PUBG')),
      AnswerModel(title: 'Minecraft', onPerssed: () => debugPrint('Minecraft')),
    ],
  ),

  QuestionModel(
    title: 'Which car brand do you like?',
    answersOfQuestion: [
      AnswerModel(title: 'BMW', onPerssed: () => debugPrint('BMW')),
      AnswerModel(title: 'Mercedes', onPerssed: () => debugPrint('Mercedes')),
      AnswerModel(title: 'Toyota', onPerssed: () => debugPrint('Toyota')),
      AnswerModel(title: 'Tesla', onPerssed: () => debugPrint('Tesla')),
    ],
  ),

  QuestionModel(
    title: 'What is your favorite music?',
    answersOfQuestion: [
      AnswerModel(title: 'Pop', onPerssed: () => debugPrint('Pop')),
      AnswerModel(title: 'Rock', onPerssed: () => debugPrint('Rock')),
      AnswerModel(title: 'Classical', onPerssed: () => debugPrint('Classical')),
      AnswerModel(title: 'Rap', onPerssed: () => debugPrint('Rap')),
    ],
  ),

  QuestionModel(
    title: 'Which social media app do you use most?',
    answersOfQuestion: [
      AnswerModel(title: 'Facebook', onPerssed: () => debugPrint('Facebook')),
      AnswerModel(title: 'Instagram', onPerssed: () => debugPrint('Instagram')),
      AnswerModel(title: 'TikTok', onPerssed: () => debugPrint('TikTok')),
      AnswerModel(title: 'X', onPerssed: () => debugPrint('X')),
    ],
  ),

  QuestionModel(
    title: 'What is your favorite dessert?',
    answersOfQuestion: [
      AnswerModel(title: 'Ice Cream', onPerssed: () => debugPrint('Ice Cream')),
      AnswerModel(title: 'Chocolate', onPerssed: () => debugPrint('Chocolate')),
      AnswerModel(title: 'Donut', onPerssed: () => debugPrint('Donut')),
    ],
  ),

  QuestionModel(
    title: 'What is your dream job?',
    answersOfQuestion: [
      AnswerModel(title: 'Software Engineer', onPerssed: () => debugPrint('Software Engineer')),
      AnswerModel(title: 'Doctor', onPerssed: () => debugPrint('Doctor')),
      AnswerModel(title: 'Teacher', onPerssed: () => debugPrint('Teacher')),
      AnswerModel(title: 'Pilot', onPerssed: () => debugPrint('Pilot')),
    ],
  ),

  QuestionModel(
    title: 'Which country would you like to visit?',
    answersOfQuestion: [
      AnswerModel(title: 'Japan', onPerssed: () => debugPrint('Japan')),
      AnswerModel(title: 'Turkey', onPerssed: () => debugPrint('Turkey')),
      AnswerModel(title: 'Italy', onPerssed: () => debugPrint('Italy')),
      AnswerModel(title: 'Canada', onPerssed: () => debugPrint('Canada')),
    ],
  ),
];