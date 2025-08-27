import 'package:flutter/material.dart';
import 'package:revise/ques.dart';
import 'package:revise/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  //? means that activeScreen cannot be null
// active screen is a widget so its data type that should be stored should also be widget
  // var activeScreen = 'start-screen';

  @override
  void initState() {
    // TODO: implement initState
    activeScreen = StartScreen(switchScreen);
    // activeScreen = 'ques-screen';

    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: SizedBox.expand(
            child: activeScreen,
            // child:activeScreen=='start-screen'?StartScreen(switchScreen):QuestionScreen();
          ),
        ),
      ),
    );
    ;
  }
}
