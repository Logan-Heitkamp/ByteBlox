import 'package:flutter/material.dart';
import 'dart:io';

var explination = 'lib/print.txt';
var file = 'lib/print.txt';
String explain = 'idk';
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
        '/second': (context) => ExplinationPage(),
        '/third': (context) => DraggableNumberScreen(),
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
        title: Text('Home: Python Lessons'),
      ),
      body: Stack(
        children: [
          Positioned(
          left: 100,
          top: 0,
          child: Text('Introduction', style: TextStyle(
              fontSize: 24.0,),
        ),
        ),
          Positioned(
          left: 100,
          top: 50,
          child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when the button is pressed
            Navigator.pushNamed(context, '/second');
            explination = 'lib/1.1explain.txt';
            file = 'lib/1.1';
            explain = readExplination(File(explination));
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
            explination = 'lib/1.2explain.txt';
            file = 'lib/1.2';
            explain = readExplination(File(explination));
          },
          child: Text('1.2 Arithmetic'),
        ),
        ),
        Positioned(
          left: 100,
          top: 150,
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when the button is pressed
            Navigator.pushNamed(context, '/second');
            explination = 'lib/1.3explain.txt';
            file = 'lib/1.3';
            explain = readExplination(File(explination));
          },
          child: Text('1.3 String Formating'),
        ),
        ),
        Positioned(
          left: 100,
          top: 200,
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when the button is pressed
            Navigator.pushNamed(context, '/second');
            explination = 'lib/1.4explain.txt';
            file = 'lib/1.4';
            explain = readExplination(File(explination));
          },
          child: Text('1.4 Variables'),
        ),
        ),
        Positioned(
          left: 100,
          top: 250,
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when the button is pressed
            Navigator.pushNamed(context, '/second');
            explination = 'lib/1.5explain.txt';
            file = 'lib/1.5';
            explain = readExplination(File(explination));
          },
          child: Text('1.5 Manipulating Variables'),
        ),
        ),
        Positioned(
          left: 100,
          top: 300,
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when the button is pressed
            Navigator.pushNamed(context, '/second');
            explination = 'lib/1.6explain.txt';
            file = 'lib/1.6';
            explain = readExplination(File(explination));
          },
          child: Text('1.6 Input Statments'),
        ),
        ),
        Positioned(
          left: 100,
          top: 350,
          child: Text('If Statements and Loops', style: TextStyle(
              fontSize: 24.0,),
        ),
        ),
        Positioned(
          left: 100,
          top: 400,
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when the button is pressed
            Navigator.pushNamed(context, '/second');
            explination = 'lib/2.1explain.txt';
            file = 'lib/2.1';
            explain = readExplination(File(explination));
          },
          child: Text('2.1 Boolean Operatiors'),
        ),
        ),
        Positioned(
          left: 100,
          top: 450,
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when the button is pressed
            Navigator.pushNamed(context, '/second');
            explination = 'lib/2.2explain.txt';
            file = 'lib/2.2';
            explain = readExplination(File(explination));
          },
          child: Text('2.2 if/else Statments'),
        ),
        ),
        Positioned(
          left: 100,
          top: 500,
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when the button is pressed
            Navigator.pushNamed(context, '/second');
            explination = 'lib/2.3explain.txt';
            file = 'lib/2.3';
            explain = readExplination(File(explination));
          },
          child: Text('2.3 elif Statments'),
        ),
        ),
        Positioned(
          left: 100,
          top: 550,
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when the button is pressed
            Navigator.pushNamed(context, '/second');
            explination = 'lib/2.4explain.txt';
            file = 'lib/2.4';
            explain = readExplination(File(explination));
          },
          child: Text('2.4 Compound Boolean'),
        ),
        ),
        Positioned(
          left: 100,
          top: 600,
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when the button is pressed
            Navigator.pushNamed(context, '/second');
            explination = 'lib/2.5explain.txt';
            file = 'lib/2.5';
            explain = readExplination(File(explination));
          },
          child: Text('2.5 While Loops'),
        ),
        ),
        Positioned(
          left: 100,
          top: 650,
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when the button is pressed
            Navigator.pushNamed(context, '/second');
            explination = 'lib/2.6explain.txt';
            file = 'lib/2.6';
            explain = readExplination(File(explination));
          },
          child: Text('2.6 For Loops'),
        ),
        ),
        Positioned(
          left: 100,
          top: 700,
          child: Text('Lists', style: TextStyle(
              fontSize: 24.0,),
        ),
        ),
        Positioned(
          left: 100,
          top: 750,
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when the button is pressed
            Navigator.pushNamed(context, '/second');
            explination = 'lib/3.1explain.txt';
            file = 'lib/3.1';
            explain = readExplination(File(explination));
          },
          child: Text('3.1 List'),
        ),
        ),
        Positioned(
          left: 100,
          top: 800,
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when the button is pressed
            Navigator.pushNamed(context, '/second');
            explination = 'lib/3.2explain.txt';
            file = 'lib/3.2';
            explain = readExplination(File(explination));
          },
          child: Text('3.2 Lists and While Loops'),
        ),
        ),
        Positioned(
          left: 100,
          top: 850,
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when the button is pressed
            Navigator.pushNamed(context, '/second');
            explination = 'lib/3.3explain.txt';
            file = 'lib/3.3';
            explain = readExplination(File(explination));
          },
          child: Text('3.3 Lists and For Loops'),
        ),
        ),
          ],
      ),
    );
  }
}

class ExplinationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text(explain),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
              child: Text('Click to Continue'),
              )
            ]
      ),
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
      appBar: AppBar(title: Text("Quiz")),
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

String readExplination(file) {
  String text = file.readAsStringSync();
  return text;
}
