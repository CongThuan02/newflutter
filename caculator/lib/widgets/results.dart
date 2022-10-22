// ignore_for_file: prefer_const_constructors

import 'package:calculadora/bloc/calculator/calculator_bloc.dart';
import 'package:calculadora/widgets/main_result.dart';
import 'package:calculadora/widgets/sub_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'line_separator.dart';

class Results extends StatelessWidget {
  const Results({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (context, state) {
        return Column(
          children: [
            SubResult(text: state.firstNumber),
            SubResult(text: state.operation),
            SubResult(text: state.secondNumber),
            LineSeparator(),
            MainResultText(text: state.mathRsesult),
          ],
        );
      },
    );
  }
}
