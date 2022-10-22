part of 'calculator_bloc.dart';

class CalculatorState {
  final String mathRsesult;
  final String firstNumber;
  final String secondNumber;
  final String operation;

  CalculatorState(
      {this.mathRsesult = '',
      this.firstNumber = '',
      this.secondNumber = '',
      this.operation = ''});
  CalculatorState copyWith({
    String? mathRsesult,
    String? firstNumber,
    String? secondNumber,
    String? operation,
  }) =>
      CalculatorState(
        mathRsesult: mathRsesult ?? this.mathRsesult,
        firstNumber: firstNumber ?? this.firstNumber,
        secondNumber: secondNumber ?? this.secondNumber,
        operation: operation ?? this.operation,
      );
}
