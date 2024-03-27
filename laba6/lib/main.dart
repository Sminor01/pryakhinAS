import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      title: 'Калькулятор площади',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Калькулятор площади'),
        ),
        body: AreaCalculator(),
      ),
    );
  }
}

class AreaCalculator extends StatefulWidget {
  @override
  _AreaCalculatorState createState() => _AreaCalculatorState();
}

class _AreaCalculatorState extends State<AreaCalculator> {
  final TextEditingController widthController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  double area = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AreaTextField(widthController, 'Ширина (мм)'),
        AreaTextField(heightController, 'Высота (мм)'),
        ElevatedButton(
          onPressed: () {
            setState(() {
              area = calculateArea(widthController.text, heightController.text);
            });
          },
          child: Text('Вычислить'),
        ),
        Text('Площадь: $area'),
      ],
    );
  }

  double calculateArea(String width, String height) {
    if (width.isEmpty || height.isEmpty) {
      return 0;
    }

    double widthValue = double.parse(width);
    double heightValue = double.parse(height);

    return widthValue * heightValue;
  }
}

class AreaTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;

  AreaTextField(this.controller, this.label);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
        ),
      ),
    );
  }
}
