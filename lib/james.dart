import 'package:flutter/material.dart';
import 'dart:io';

String file = 'lib/print.txt';
void main() {
  runApp(DraggableNumberApp());
}



class DraggableNumberApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Knockoff Duolingo',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/second': (context) => DraggableNumberScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen: Python Lessons'),
      ),
      body: Stack(
        children: [
          //Container(color: const Color.fromARGB(255, 53, 120, 58), width: 100, height: 100),
          Positioned(
          left: 100,
          top: 50,
          child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when the button is pressed
            Navigator.pushNamed(context, '/second');
            file = 'lib/1.1';
          },
          child: Text('1.1 Hello World'),
        ),
        ),
        Positioned(
          left: 100,
          top: 100,
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when the button is pressed
            Navigator.pushNamed(context, '/second');
            file = 'lib/1.2';
          },
          child: Text('1.2 The Print Statement'),
        ),
        ),
        Positioned(
          left: 100,
          top: 150,
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when the button is pressed
            Navigator.pushNamed(context, '/second');
            file = 'lib/1.3';
          },
          child: Text('1.3 Variables'),
        ),
        ),
          ],
      ),
    );
  }
}

class DraggableNumberScreen extends StatefulWidget {
  @override
  _DraggableNumberScreenState createState() => _DraggableNumberScreenState();
}

class _DraggableNumberScreenState extends State<DraggableNumberScreen> {
  List<Offset> positions = [Offset(300, 400), Offset(400, 400), Offset(500, 400)];
  List<Offset> original_positions = [Offset(300, 400), Offset(400, 400), Offset(500, 400)];
  List<String> numbers = ["2", "4", "6"];
  List<String> incorrect_numbers = ["2", "4"];
  String correctAnswer = "6";
  String? selectedNumber;
  bool correct = false;
  String correctAnswer2 = "6";
  String? selectedNumber2;
  bool correct2 = false;

  // get file contents
  List<String> problem = readFile(File(file));
  
  void place(int index) {
    numbers[index] = " ";
  }

  void replaceOption(int index, String value) {
    numbers[index] = value;
    positions[index] = original_positions[index];
  }

  void submitButton() {
    if (selectedNumber2 == correctAnswer2) {
      correct2 = true;
    }
    else {
      replaceOption(2, "6");
    }
    
    print(numbers);
    for (var entry in incorrect_numbers.asMap().entries) {
      int index = entry.key;
      String item = entry.value;
      replaceOption(index, item);
    }
    
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
              problem[0],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            left: 150,
            top: 150,
            child: DragTarget<String>(
              onAccept: (value) {
                setState(() {
                  selectedNumber = value;
                });
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  width: 100,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: selectedNumber == correctAnswer ? Colors.green : Colors.red,
                  ),
                  child: Text(
                    selectedNumber?.toString() ?? "Drop here",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                );
              },
            ),
          ),
          Positioned(
            left: 350,
            top: 150,
            child: DragTarget<String>(
              onAccept: (value) {
                setState(() {
                  if (correct2) {
                    replaceOption(numbers.indexOf(value), value);
                  }
                  else {
                  selectedNumber2 = value;
                    if (value == "2") {
                      place(0);
                    }
                    if (value == "4") {
                      place(1);
                    }
                    if (value == "6") {
                      place(2);
                    }
                  }
                });
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  width: 100,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: selectedNumber2 == correctAnswer2 || correct2 ? Colors.green : Colors.red,
                  ),
                  child: Text(
                    correct2 ? correctAnswer2 : selectedNumber2?.toString() ?? "Drop here2",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                );
              },
            ),
          ),
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
          
          ...List.generate(numbers.length, (index) {
            return Positioned(
              left: positions[index].dx,
              top: positions[index].dy,
              child: DraggableNumber(
                number: numbers[index],
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
