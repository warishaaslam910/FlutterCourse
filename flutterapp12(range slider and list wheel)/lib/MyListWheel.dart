import 'package:flutter/material.dart';

class MyListWheel extends StatefulWidget {
  const MyListWheel({super.key});

  @override
  State<MyListWheel> createState() => _MyListWheelState();
}

class _MyListWheelState extends State<MyListWheel> {
  var mycollection = [
    {"pic": "assets/images/pic1.jpg"},
    {"pic": "assets/images/pic2.jpg"},
    {"pic": "assets/images/pic3.jpg"},
    {"pic": "assets/images/pic4.jpg"},
    {"pic": "assets/images/pic5.jpg"},
    {"pic": "assets/images/pic2.jpg"},
    {"pic": "assets/images/pic3.jpg"},
    {"pic": "assets/images/pic4.jpg"},
    {"pic": "assets/images/pic5.jpg"},
  ];
RangeValues values=RangeValues(2000, 3000);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels =RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(appBar: AppBar(backgroundColor: Colors.black),
      body:  Padding(
        
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
               Row(
                children:[
                  Icon(Icons.more_vert_sharp,color: Colors.black,size: 35,),
              Text('New Collection',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,),
             textAlign: TextAlign.left,),
             Padding(padding: EdgeInsets.all(16)),
              Icon(Icons.shopping_cart,color: Color.fromARGB(255, 0, 0, 0),size: 35,),
                ],
                 
              ),
              Padding(padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              child:
               Expanded(
                
                child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              
                  RangeSlider(values: values,
                  labels: labels,
                  divisions: 8,
                  min: 2000,
                  max: 10000,
                  
                  activeColor: Color.fromARGB(111, 150, 61, 28),
                  inactiveColor: const Color.fromARGB(255, 80, 77, 77),
                   onChanged: (changedvalue)
                   {
                     values=changedvalue;
                    setState(() {
                      
                    });
                   }
                   ),
              
              ],),


               ),
              ),
             

          
             
             
              
              Expanded(child:
              ListWheelScrollView(
              itemExtent: 250,
              children: mycollection.map((value) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  color: Color.fromARGB(255, 192, 144, 122),
                  child: Column(children: [
                    Padding(padding: EdgeInsets.all(20.0)),
                    SizedBox(
                      height: 100,
                      width: 200,
                      child: Image.asset("${value["pic"]}"),
                    ),
                    SizedBox(
                      child: Text('price:200'),
                    ),
                  ]),
                );
              }).toList(),
            ),
               ),
                
            ],
           
          ),
        
      ),
    backgroundColor: Color.fromARGB(255, 17, 17, 17),  
    );
    
  }
}

//////listtile
// ///ListTile(
//               title: SizedBox(height: 20,
//                 child: Image.asset("${value["1"]}")),
//               subtitle: Text("2000 Rs"),
//               tileColor: Color.fromARGB(255, 11, 176, 218),
//           ),
//           ListTile(
//               title: SizedBox(height: 20,
//                 child: Image.asset("${value["1"]}")),
//               subtitle: Text("2000 Rs"),
//               tileColor: Color.fromARGB(255, 11, 176, 218),
//           ),
//            ListTile(
//               title: SizedBox(height: 20,
//                 child: Image.asset("${value["1"]}")),
//               subtitle: Text("2000 Rs"),
//               tileColor: Color.fromARGB(255, 11, 176, 218),
//           ),
//            ListTile(
//               title: SizedBox(height: 20,
//                 child: Image.asset("${value["1"]}")),
//               subtitle: Text("2000 Rs"),
//               tileColor: Color.fromARGB(255, 11, 176, 218),
//           ),
//            ListTile(
//               title: SizedBox(height: 20,
//                 child: Image.asset("${value["1"]}")),
//               subtitle: Text("2000 Rs"),
//               tileColor: Color.fromARGB(255, 11, 176, 218),
//           ),Container(
//             color: Colors.orange,
//             width: 100,
//             height: 100,
//             child:Center(child: Text("W5",textScaleFactor: 2.5,)),
//           ),