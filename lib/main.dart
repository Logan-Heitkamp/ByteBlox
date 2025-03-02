import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(DraggableNumberApp());
}

class DraggableNumberApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DraggableNumberScreen(),
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
    
    for (int i = 0; i < problem.length; i ++) {
      positions.add(Offset((200 + 100 * i).toDouble(), 500));
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
    inputs.add("Drop Here");
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

  print([question, positions, originalPositions, correct, options, numBoxes, inputs, answers].length);
  print([question, positions, originalPositions, correct, options, numBoxes, inputs, answers]);

  return [question, positions, originalPositions, correct, options, numBoxes, inputs, answers];
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
      }
      else {
        replaceOption(i, answers[i]);
      }
    }
    print(answers);
    print(options);
    print(inputs);
    print(correct);
    // for (var entry in incorrect_numbers.asMap().entries) {
    //   int index = entry.key;
    //   String item = entry.value;
    //   replaceOption(index, item);
    // }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Drag the Correct Answer")),
      body: Stack(
        children: [

          // Create question
          Positioned(
            left: 100,
            top: 50,
            child: Text(
              question,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),

          ...List.generate(numBoxes, (index) {
          return Positioned(
            left: 50 + 210 * index.toDouble(),
            top: 150,
            child: DragTarget<String>(
              onAccept: (value) {
                setState(() {
                  if (correct[index]) {
                    replaceOption(options.indexOf(value), value);
                  }
                  else {
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
                  width: 200,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: correct[index] ? Colors.green : Colors.red,
                  ),
                  child: Text(
                    correct[index] ? answers[index] : inputs[index].toString(),
                    style: TextStyle(fontSize: double.tryParse(inputs[index]) != null ? 36 : 24, fontWeight: FontWeight.bold, height: 1),
                  ),
                );
              },
            ),
          );
          }),

          Positioned(
            left: 500,
            top: 500,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  submitButton();
                });
              },
            child: Text('BUTTON', style: TextStyle(fontSize: 100),),
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
                    positions[index] = details.offset + Offset(0, -50);
                  });
                },
              ),
            );
          }),

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
        color: Colors.transparent,
        child: Text(
          number.toString(),
          style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
      ),
      childWhenDragging: Container(),
      onDragEnd: onDragEnd,
      child: Text(
        number.toString(),
        style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}

List<String> readFile(file) {
  //Given file path, ruturns each line of the file as an object in a list
  List<String> lines = file.readAsLinesSync();
  return lines;
}
