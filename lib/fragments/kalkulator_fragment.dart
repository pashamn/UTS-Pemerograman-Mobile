import 'package:flutter/material.dart';
import 'dart:math';

class KalkulatorFragment extends StatefulWidget {
  const KalkulatorFragment({Key? key}) : super(key: key);

  @override
  State<KalkulatorFragment> createState() => _KalkulatorFragmentState();
}

class _KalkulatorFragmentState extends State<KalkulatorFragment> {
  String display = '0';
  String operand1 = '';
  String operator = '';
  bool shouldResetDisplay = false;

  void onButtonPressed(String value) {
    setState(() {
      if (value == 'C') {
        display = '0';
        operand1 = '';
        operator = '';
      } else if (value == '←') {
        if (display.length > 1) {
          display = display.substring(0, display.length - 1);
        } else {
          display = '0';
        }
      } else if (value == '√') {
        double num = double.parse(display);
        display = sqrt(num).toString();
      } else if (value == 'x²') {
        double num = double.parse(display);
        display = (num * num).toString();
      } else if (['+', '-', '×', '÷'].contains(value)) {
        operand1 = display;
        operator = value;
        shouldResetDisplay = true;
      } else if (value == '=') {
        if (operand1.isNotEmpty && operator.isNotEmpty) {
          double num1 = double.parse(operand1);
          double num2 = double.parse(display);
          double result = 0;

          switch (operator) {
            case '+':
              result = num1 + num2;
              break;
            case '-':
              result = num1 - num2;
              break;
            case '×':
              result = num1 * num2;
              break;
            case '÷':
              result = num2 != 0 ? num1 / num2 : 0;
              break;
          }

          display = result.toString();
          operand1 = '';
          operator = '';
        }
      } else {
        if (shouldResetDisplay || display == '0') {
          display = value;
          shouldResetDisplay = false;
        } else {
          display += value;
        }
      }
    });
  }

  Widget buildButton(String text, {Color? color}) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(4),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? Colors.grey.shade300,
            foregroundColor: color != null ? Colors.white : Colors.black,
            padding: const EdgeInsets.all(24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () => onButtonPressed(text),
          child: Text(text, style: const TextStyle(fontSize: 24)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            alignment: Alignment.bottomRight,
            padding: const EdgeInsets.all(24),
            color: Colors.black12,
            child: Text(
              display,
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      buildButton('C', color: Colors.red.shade400),
                      buildButton('←', color: Colors.orange.shade400),
                      buildButton('√', color: Colors.teal.shade400),
                      buildButton('x²', color: Colors.teal.shade400),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      buildButton('7'),
                      buildButton('8'),
                      buildButton('9'),
                      buildButton('÷', color: Colors.teal.shade400),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      buildButton('4'),
                      buildButton('5'),
                      buildButton('6'),
                      buildButton('×', color: Colors.teal.shade400),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      buildButton('1'),
                      buildButton('2'),
                      buildButton('3'),
                      buildButton('-', color: Colors.teal.shade400),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      buildButton('0'),
                      buildButton('.'),
                      buildButton('=', color: Colors.green),
                      buildButton('+', color: Colors.teal.shade400),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
