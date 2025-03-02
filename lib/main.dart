import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:math';

bool horizontal = true;

var explination = 'lib/print.txt';
var file = 'lib/print.txt';
List<String> explain = ['idk'];
void main() {
  runApp(DraggableNumberApp());
}

class DraggableNumberApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Byte Blox',
      theme: ThemeData.dark(),
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
  double column1X = 100;
  double column1Y = 50;
  double column2X = 720;
  double column2Y = 50;
  double column3X = 1350;
  double column3Y = 50;

  double font_size = 36;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 56, 56, 56),
      appBar: AppBar(title: Text('Home: Python Lessons')),
      body: Stack(
        children: [
          Positioned(
            left: column1X,
            top: column1Y - 20,
            child: Text(
              'Introduction',
              style: TextStyle(
                fontSize: 48,
                color: Colors.white,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          Positioned(
            left: column1X,
            top: column1Y + 75,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(0, 23, 63, 1),
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // Navigate to the second screen when the button is pressed
                Navigator.pushNamed(context, '/second');
                explination = 'lib/1.1explain.txt';
                file = 'lib/1.1';
                explain = readExplination(File(explination));
              },
              child: Text(
                '1.1 Hello World',
                style: TextStyle(fontSize: font_size),
              ),
            ),
          ),
          Positioned(
            left: column1X,
            top: column1Y + 150,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(0, 23, 63, 1),
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // Navigate to the second screen when the button is pressed
                Navigator.pushNamed(context, '/second');
                explination = 'lib/1.2explain.txt';
                file = 'lib/1.2';
                explain = readExplination(File(explination));
              },
              child: Text(
                '1.2 Arithmetic',
                style: TextStyle(fontSize: font_size),
              ),
            ),
          ),
          Positioned(
            left: column1X,
            top: column1Y + 225,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(0, 23, 63, 1),
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // Navigate to the second screen when the button is pressed
                Navigator.pushNamed(context, '/second');
                explination = 'lib/1.3explain.txt';
                file = 'lib/1.3';
                explain = readExplination(File(explination));
              },
              child: Text(
                '1.3 String Formating',
                style: TextStyle(fontSize: font_size),
              ),
            ),
          ),
          Positioned(
            left: column1X,
            top: column1Y + 300,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(0, 23, 63, 1),
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // Navigate to the second screen when the button is pressed
                Navigator.pushNamed(context, '/second');
                explination = 'lib/1.4explain.txt';
                file = 'lib/1.4';
                explain = readExplination(File(explination));
              },
              child: Text(
                '1.4 Variables',
                style: TextStyle(fontSize: font_size),
              ),
            ),
          ),
          Positioned(
            left: column1X,
            top: column1Y + 375,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(0, 23, 63, 1),
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // Navigate to the second screen when the button is pressed
                Navigator.pushNamed(context, '/second');
                explination = 'lib/1.5explain.txt';
                file = 'lib/1.5';
                explain = readExplination(File(explination));
              },
              child: Text(
                '1.5 Manipulating Variables',
                style: TextStyle(fontSize: font_size),
              ),
            ),
          ),
          Positioned(
            left: column1X,
            top: column1Y + 450,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(0, 23, 63, 1),
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // Navigate to the second screen when the button is pressed
                Navigator.pushNamed(context, '/second');
                explination = 'lib/1.6explain.txt';
                file = 'lib/1.6';
                explain = readExplination(File(explination));
              },
              child: Text(
                '1.6 Input Statments',
                style: TextStyle(fontSize: font_size),
              ),
            ),
          ),
          Positioned(
            left: column2X,
            top: column2Y - 20,
            child: Text(
              'If Statements and Loops',
              style: TextStyle(
                fontSize: 48.0,
                color: Colors.white,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          Positioned(
            left: column2X,
            top: column2Y + 75,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(0, 23, 63, 1),
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // Navigate to the second screen when the button is pressed
                Navigator.pushNamed(context, '/second');
                explination = 'lib/2.1explain.txt';
                file = 'lib/2.1';
                explain = readExplination(File(explination));
              },
              child: Text(
                '2.1 Boolean Operatiors',
                style: TextStyle(fontSize: font_size),
              ),
            ),
          ),
          Positioned(
            left: column2X,
            top: column2Y + 150,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(0, 23, 63, 1),
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // Navigate to the second screen when the button is pressed
                Navigator.pushNamed(context, '/second');
                explination = 'lib/2.2explain.txt';
                file = 'lib/2.2';
                explain = readExplination(File(explination));
              },
              child: Text(
                '2.2 if/else Statments',
                style: TextStyle(fontSize: font_size),
              ),
            ),
          ),
          Positioned(
            left: column2X,
            top: column2Y + 225,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(0, 23, 63, 1),
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // Navigate to the second screen when the button is pressed
                Navigator.pushNamed(context, '/second');
                explination = 'lib/2.3explain.txt';
                file = 'lib/2.3';
                explain = readExplination(File(explination));
              },
              child: Text(
                '2.3 elif Statments',
                style: TextStyle(fontSize: font_size),
              ),
            ),
          ),
          Positioned(
            left: column2X,
            top: column2Y + 300,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(0, 23, 63, 1),
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // Navigate to the second screen when the button is pressed
                Navigator.pushNamed(context, '/second');
                explination = 'lib/2.4explain.txt';
                file = 'lib/2.4';
                explain = readExplination(File(explination));
              },
              child: Text(
                '2.4 Compound Boolean',
                style: TextStyle(fontSize: font_size),
              ),
            ),
          ),
          Positioned(
            left: column2X,
            top: column2Y + 375,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(0, 23, 63, 1),
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // Navigate to the second screen when the button is pressed
                Navigator.pushNamed(context, '/second');
                explination = 'lib/2.5explain.txt';
                file = 'lib/2.5';
                explain = readExplination(File(explination));
              },
              child: Text(
                '2.5 While Loops',
                style: TextStyle(fontSize: font_size),
              ),
            ),
          ),
          Positioned(
            left: column2X,
            top: column2Y + 450,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(0, 23, 63, 1),
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // Navigate to the second screen when the button is pressed
                Navigator.pushNamed(context, '/second');
                explination = 'lib/2.6explain.txt';
                file = 'lib/2.6';
                explain = readExplination(File(explination));
              },
              child: Text(
                '2.6 For Loops',
                style: TextStyle(fontSize: font_size),
              ),
            ),
          ),
          Positioned(
            left: column3X,
            top: column3Y - 20,
            child: Text(
              'Lists',
              style: TextStyle(
                fontSize: 48.0,
                color: Colors.white,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          Positioned(
            left: column3X,
            top: column3Y + 75,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(0, 23, 63, 1),
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // Navigate to the second screen when the button is pressed
                Navigator.pushNamed(context, '/second');
                explination = 'lib/3.1explain.txt';
                file = 'lib/3.1';
                explain = readExplination(File(explination));
              },
              child: Text('3.1 List', style: TextStyle(fontSize: font_size)),
            ),
          ),
          Positioned(
            left: column3X,
            top: column3Y + 150,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(0, 23, 63, 1),
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // Navigate to the second screen when the button is pressed
                Navigator.pushNamed(context, '/second');
                explination = 'lib/3.2explain.txt';
                file = 'lib/3.2';
                explain = readExplination(File(explination));
              },
              child: Text(
                '3.2 Lists and While Loops',
                style: TextStyle(fontSize: font_size),
              ),
            ),
          ),
          Positioned(
            left: column3X,
            top: column3Y + 225,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(0, 23, 63, 1),
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // Navigate to the second screen when the button is pressed
                Navigator.pushNamed(context, '/second');
                explination = 'lib/3.3explain.txt';
                file = 'lib/3.3';
                explain = readExplination(File(explination));
              },
              child: Text(
                '3.3 Lists and For Loops',
                style: TextStyle(fontSize: font_size),
              ),
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
      backgroundColor: const Color.fromARGB(255, 56, 56, 56),
      appBar: AppBar(title: Text('Lesson')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ...List.generate(explain.length, (index) {
              String text = explain[index];
              if (text.startsWith("#")) {
                text = text.substring(1);
                return Container(
                  padding: EdgeInsets.only(left: 400),
                  child: Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                );
              }
              else {
                return Container(
                  padding: EdgeInsets.only(left: 400),
                  child: Text(text, style:TextStyle(fontSize: 18)),
                );
              }
            }),

            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(0, 23, 63, 1),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/third');
                },
                child: Text('Click to Continue'),
              ),
            ),
          ],
        ),
      ),
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
    positions.add(Offset(currentX.toDouble(), 700));
    currentX += problem[i].length * 13 + 10;
  }

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
  List<String> problem = readFile(File(file));

  String question = problem[0];
  problem.removeAt(0);

  String isHorizontal = problem[0];
  problem.removeAt(0);
  if (isHorizontal == "true") {
    horizontal = true;
  }
  else {
    horizontal = false;
  }

  List<String> options = List<String>.from(problem);
  options.shuffle();
  List<String>originalOptions = List<String>.from(options);
  print(options);

  List<bool> correct = setupCorrect(problem);
  int numBoxes = problem.length;
  List<String> inputs = setupInputs(problem);
  List<String> answers = List<String>.from(problem);
  List<Offset> positions = setupPositions(options);
  List<Offset> originalPositions = List<Offset>.from(positions);

  return [
    question,
    positions,
    originalPositions,
    correct,
    options,
    numBoxes,
    inputs,
    answers,
    originalOptions,
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
  late List<String> originalOptions = values[8];
  bool first = true;
  bool finished = false;

  

  void place(int index) {
    options[index] = "";
  }

  void replaceOption(int index, String value) {
    options[index] = value;
    positions[index] = original_positions[index];
  }

  void submitButton() {
    // print(options);
    // print(inputs);
    // print(answers);
    for (int i = 0; i < numBoxes; i++) {
      if (inputs[i] == answers[i]) {
        correct[i] = true;
      } else {
        replaceOption(i, answers[i]);
      }
    }
    // print(options);

    if (first) {
      first = false;
    }

    if (!correct.contains(false)) {
      finished = true;
    }

    List<String> other = [];
    for (int i = 0; i < originalOptions.length; i++) {other.add("");}
    for (String item in originalOptions) {
      if (options.contains(item)) {
        other[originalOptions.indexOf(item)] = item;
        print(other);
      }
    }
    options = List<String>.from(other);

    for (String item in options) {
      if (item == "") {
        positions[options.indexOf(item)] = Offset(100000000, 1000000);
      }
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
              left:
                  horizontal
                      ? ((1825 -
                                  (answers.length * 200 +
                                      (answers.length - 1) * 10)) /
                              2) +
                          210 * index.toDouble()
                      : 510,
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
                            place(options.indexOf(option));
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
                        border: Border.all(
                          color:
                              first || correct[index]
                                  ? Colors.black
                                  : Color.fromARGB(255, 255, 110, 100),
                          width: 3,
                        ),
                        color:
                            correct[index]
                                ? Colors.green
                                : Color.fromRGBO(0, 23, 63, 1),
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
              padding: const EdgeInsets.only(bottom: 25),
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

          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: const EdgeInsets.only(bottom: 50, right: 50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      finished
                          ? const Color.fromRGBO(0, 23, 63, 1)
                          : const Color.fromRGBO(109, 109, 109, 1),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    if (finished) {
                      Navigator.pushNamed(context, '/');
                    }
                  });
                },
                child: Text('Next', style: TextStyle(fontSize: 50)),
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
              fontSize: 24,
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
            fontSize: 24,
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

List<String> readExplination(file) {
  List<String> text = file.readAsLinesSync();
  return text;
}
