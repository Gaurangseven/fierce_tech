import 'package:csiq_quiz/screens/category_page.dart';
import 'package:csiq_quiz/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:csiq_quiz/dataclass/scorevalue.dart';
import 'package:csiq_quiz/screens/Inputpage.dart';
import 'reuseableDatas/constant.dart';
import 'package:provider/provider.dart';
import 'dataclass/categorydata.dart';

void main() {
  runApp(const ComputerQuiz());
}

class ComputerQuiz extends StatelessWidget {
  const ComputerQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CategoryData>(
          create: (BuildContext context) => CategoryData(),
        ),
        ChangeNotifierProvider<Scorevalue>(
            create: (BuildContext context) => Scorevalue())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData().copyWith(
          scaffoldBackgroundColor: kbgcolorscaffold,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
