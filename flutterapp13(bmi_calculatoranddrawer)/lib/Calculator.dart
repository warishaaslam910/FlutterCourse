import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var val01 = TextEditingController();
  var val02 = TextEditingController();

  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: val01,
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: val02,
              keyboardType: TextInputType.number,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    var n01 = int.parse(val01.text.toString());
                    var n02 = int.parse(val02.text.toString());
                    var ans = n01 + n02;

                    result = "by adding $n01 + $n02 = $ans";

                    // setState(() {});
                  },
                  child: Text("Add")),
              ElevatedButton(
                  onPressed: () {
                    var n01 = int.parse(val01.text.toString());
                    var n02 = int.parse(val02.text.toString());
                    var ans = n01 - n02;

                    result = "by subtracting $n01 - $n02 = $ans";
                    setState(() {});
                  },
                  child: Text("sub")),
              ElevatedButton(
                  onPressed: () {
                    var n01 = int.parse(val01.text.toString());
                    var n02 = int.parse(val02.text.toString());
                    var ans = n01 * n02;

                    result = "by multiplying $n01 * $n02 = $ans";
                    setState(() {});
                  },
                  child: Text("mul")),
              ElevatedButton(
                  onPressed: () {
                    var n01 = int.parse(val01.text.toString());
                    var n02 = int.parse(val02.text.toString());
                    var ans = n01 / n02;

                    result = "by dividing $n01 / $n02 = $ans";
                    setState(() {});
                  },
                  child: Text("div")),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            result,
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}