import 'package:flutter/material.dart';

class Bmicalculator extends StatefulWidget {
  const Bmicalculator({super.key});

  @override
  State<Bmicalculator> createState() => _BmicalculatorState();
}

class _BmicalculatorState extends State<Bmicalculator> {
  var wtcontroller = TextEditingController();
  var ftcontroller = TextEditingController();
  var incontroller = TextEditingController();
  var result = "";
  var msg = "";
  var bgcolor = Color.fromARGB(255, 150, 236, 153);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: Center(
        child: Container(
          width: 400,
          child: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/weight-scale.png",
                    width: 35,
                    height: 35,
                  ),
                  Text(
                    " BMI CALCULATOR",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 22,
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Image.asset(
                  "assets/images/kilogram.png",
                  width: 8,
                  height: 8,
                )),
                controller: wtcontroller,
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Image.asset(
                  "assets/images/height.png",
                  width: 8,
                  height: 8,
                )),
                controller: ftcontroller,
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Image.asset(
                  "assets/images/height.png",
                  width: 8,
                  height: 8,
                )),
                controller: incontroller,
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      var wt = wtcontroller.text.toString();
                      var ft = ftcontroller.text.toString();
                      var inh = incontroller.text.toString();
                      if (wt == "" && ft == "" && inh == "") {
                        result = "Please Enter Some Value!";
                      } else {
                        var userwt = int.parse(wt);
                        var userft = int.parse(ft);
                        var userinh = int.parse(inh);
                        var totalinh = (userft * 12) + userinh;
                        var totalcm = totalinh * 2.54;
                        var totalmeters = totalcm / 100;
                        var bmi = userwt / (totalmeters * totalmeters);

                        if (bmi > 25) {
                          msg = "\nyou are over weight";
                          bgcolor = Colors.amber;
                        } else if (bmi < 18) {
                          msg = "\nyou are under weight";
                          bgcolor = Colors.red;
                        } else {
                          msg = "\nyou are healthy!";
                          bgcolor = Colors.green;
                        }
                        result =
                          "$msg \n BMI = ${bmi.toStringAsFixed(2)}";
                      }
                      
                    });
                  },
                  child: Text("Calculate BMI")),
              SizedBox(
                height: 20,
              ),
              Text(
                "$result",
                style: TextStyle(fontSize: 21, color: Color.fromARGB(255, 12, 10, 10)),
              )
            ],
          ),
        ),
      ),
      backgroundColor: bgcolor,
    
     
    );
      
  }
}
