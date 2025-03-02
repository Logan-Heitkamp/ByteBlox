import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:io';

bool horizontal = true;

void main() {
  runApp(DraggableNumberApp());
}

class DraggableNumberApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DraggableNumberScreen(),
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DraggableNumberScreen extends StatefulWidget {
  @override
  _DraggableNumberScreenState createState() => _DraggableNumberScreenState();
}

List<Offset> setupPositions(List<String> problem) {
  List<Offset> positions = [];
  int currentX = 50;

  for (int i = 0; i < problem.length; i++) {
    positions.add(Offset(currentX.toDouble(), 500));
    currentX += problem[i].length * 25;
  }
  print(currentX);
  double offset = ((1825 - currentX + 50) / 2);
  for (int i = 0; i < positions.length; i++) {
    positions[i] += Offset(offset, 0);
  }
  return positions;
}

List<bool> setupCorrect(List<String> problem) {
  List<bool> correct = [];
  for (var _ in problem) {
    correct.add(false);
  }

  return correct;
}

List<String> setupInputs(List<String> problem) {
  List<String> inputs = [];
  for (var _ in problem) {
    inputs.add(" ");
  }

  return inputs;
}

List<dynamic> setupMain() {
  List<String> problem = readFile(File('lib/print.txt'));

  String question = problem[0];
  problem.removeAt(0);
  List<String> options = problem;

  List<Offset> positions = setupPositions(problem);
  List<Offset> originalPositions = setupPositions(problem);
  List<bool> correct = setupCorrect(problem);
  int numBoxes = problem.length;
  List<String> inputs = setupInputs(problem);
  List<String> answers = List<String>.from(options);

  return [
    question,
    positions,
    originalPositions,
    correct,
    options,
    numBoxes,
    inputs,
    answers,
  ];
}

class _DraggableNumberScreenState extends State<DraggableNumberScreen> {
  // get file contents
  List<dynamic> values = setupMain();

  late String question = values[0];
  late List<Offset> positions = values[1];
  late List<Offset> original_positions = values[2];
  late List<bool> correct = values[3];
  late List<String> options = values[4];
  late int numBoxes = values[5];
  late List<dynamic> inputs = values[6];
  late List<String> answers = values[7];
  bool first = true;

  void place(int index) {
    options[index] = "";
  }

  void replaceOption(int index, String value) {
    options[index] = value;
    positions[index] = original_positions[index];
  }

  void submitButton() {
    for (int i = 0; i < numBoxes; i++) {
      if (inputs[i] == answers[i]) {
        correct[i] = true;
      } else {
        replaceOption(i, answers[i]);
      }
    }

    if (first) {
      first = false;
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 56, 56, 56),
      appBar: AppBar(title: Text("Drag the Correct Answer")),
      body: Stack(
        children: [
          // Create question
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: const EdgeInsets.all(25),
              child: Text(
                question,
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),

          ...List.generate(numBoxes, (index) {
            return Positioned(
              left: horizontal ? ((1825 - (answers.length * 200 + (answers.length - 1) * 10)) / 2) + 210 * index.toDouble() : 510,
              top: horizontal ? 200 : 70 * index + 150,
              child: Container(
                padding: const EdgeInsets.only(left: 50, top: 10),
                child: DragTarget<String>(
                  onAccept: (value) {
                    setState(() {
                      if (correct[index]) {
                        replaceOption(options.indexOf(value), value);
                      } else {
                        inputs[index] = value;
                        for (var option in options) {
                          if (value == option) {
                            place(answers.indexOf(option));
                          }
                        }
                      }
                    });
                  },
                  builder: (context, candidateData, rejectedData) {
                    return Container(
                      width: horizontal ? 200 : 800,
                      height: horizontal ? 60 : 60,
                      alignment:
                          horizontal ? Alignment.center : Alignment.centerLeft,
                      decoration: BoxDecoration(
                        border: Border.all(color: first || correct[index] ? Colors.black : Color.fromARGB(255, 255, 110, 100), width: 3),
                        color:
                            correct[index]
                                ? Colors.green : Color.fromRGBO(0, 23, 63, 1),
                      ),
                      child: Text(
                        correct[index]
                            ? answers[index]
                            : inputs[index].toString(),
                        style: TextStyle(
                          fontSize:
                              double.tryParse(inputs[index]) != null ? 36 : 24,
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          }),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.only(bottom: 100),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(0, 23, 63, 1),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    submitButton();
                  });
                },
                child: Text('Submit', style: TextStyle(fontSize: 80)),
              ),
            ),
          ),

          ...List.generate(answers.length, (index) {
            return Positioned(
              left: positions[index].dx,
              top: positions[index].dy,
              child: DraggableNumber(
                number: options[index],
                onDragEnd: (details) {
                  setState(() {
                    positions[index] =
                        options[index] != ""
                            ? details.offset + Offset(0, -50)
                            : Offset(10000, 1000000);
                  });
                },
              ),
            );
          }),
          Align(alignment: Alignment.center),
        ],
      ),
    );
  }
}

class DraggableNumber extends StatelessWidget {
  final String number;
  final Function(DraggableDetails) onDragEnd;

  DraggableNumber({required this.number, required this.onDragEnd});

  @override
  Widget build(BuildContext context) {
    return Draggable<String>(
      data: number,
      feedback: Material(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromRGBO(255, 255, 255, 1),
              width: 3,
            ),
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: const Color.fromARGB(255, 75, 75, 75),
          ),
          child: Text(
            number.toString(),
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ),
      ),
      childWhenDragging: Container(),
      onDragEnd: onDragEnd,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(0, 0, 0, 1), width: 3),
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: const Color.fromARGB(255, 75, 75, 75),
        ),
        child: Text(
          number.toString(),
          style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: const Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
      ),
    );
  }
}

List<String> readFile(file) {
  //Given file path, ruturns each line of the file as an object in a list
  List<String> lines = file.readAsLinesSync();
  return lines;
}
