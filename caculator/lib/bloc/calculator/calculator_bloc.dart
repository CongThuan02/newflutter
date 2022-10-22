import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(CalculatorState()) {
    on((event, emit) => {
          if (event is ResertAC)
            {emit(this._resetAc())}
          else if (event is AddNumber)
            {
              emit(state.copyWith(
                mathRsesult: (state.mathRsesult == '0'
                    ? event.number
                    : state.mathRsesult + event.number),
              ))
            }
          else if (event is ChangeNegativePositive)
            {
              emit(state.copyWith(
                  mathRsesult: state.mathRsesult.contains('-')
                      ? state.mathRsesult.replaceFirst('-', '')
                      : '-' + state.mathRsesult))
            }
          else if (event is DeleteLastEntry){
            emit(state.copyWith(
              mathRsesult: state.mathRsesult.length>1? state.mathRsesult.substring(0,state.mathRsesult.length-1): '0'
            ))
              }
          else if( event is OperationEntry){
            emit( state.copyWith(
              firstNumber: state.mathRsesult,
              mathRsesult: '0',
              operation: event.operation,
              secondNumber: '0'

            ))

    }
          else if(event is CalculateResult){
            emit(_calculateResult())
                  }
        });
  }
  _resetAc() {
    // ignore: invalid_use_of_visible_for_testing_member

    emit(CalculatorState(
      firstNumber: "0",
      mathRsesult: "0",
      operation: "",
      secondNumber: "0",
    ));
  }
  _calculateResult() {
    final double num1 = double.parse(state.firstNumber);
    final double num2 = double.parse(state.mathRsesult);
    switch( state.operation){
      case '+': {
        emit(state.copyWith(
          secondNumber: state.mathRsesult,
          mathRsesult: '${num1+ num2}'
        ));
        break;
      }
      case '-': {
        emit(state.copyWith(
            secondNumber: state.mathRsesult,
            mathRsesult: '${num1- num2}'
        ));
        break;
      }
      case 'x': {
        emit(state.copyWith(
            secondNumber: state.mathRsesult,
            mathRsesult: '${num1* num2}'
        ));
        break;
      }
      case '/': {
        emit(state.copyWith(
            secondNumber: state.mathRsesult,
            mathRsesult: '${num1/ num2}'
        ));
        break;
      }
      case '=': {
        break;
      }
      default: emit(state);
    }

  }

}

