import 'package:flutter/material.dart';

class Fooanim extends StatefulWidget {
  const Fooanim({super.key});

  @override
  State<Fooanim> createState() => _FooanimState();
}

class _FooanimState extends State<Fooanim> {
  
  double boxwidth = 200;
  double boxheight = 300;
  var deco_box = BoxDecoration(
    
    image: DecorationImage(
                  image: new NetworkImage("https://a2i2.com/wp-content/uploads/2019/03/blue_books_icon.png"),
                  fit: BoxFit.fill,
                   ),
   
   
    borderRadius: BorderRadius.circular(21),
  );
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          AnimatedContainer(
            width: boxwidth,
            height: boxheight,
            curve: Curves.bounceIn,
            decoration: deco_box,
            duration: Duration(seconds: 6),
          ),
          ElevatedButton(
              onPressed: () {
                if (flag) {
                  boxwidth = 300;
                  boxheight = 200;

                  deco_box = BoxDecoration(
                    color: Color.fromARGB(255, 77, 129, 172),
                    borderRadius: BorderRadius.circular(21),
                  );

                  flag = false;
                } else {
                  boxwidth = 200;
                  boxheight = 300;
                  deco_box = BoxDecoration(
                    color: Color.fromARGB(255, 44, 132, 204),
                    borderRadius: BorderRadius.circular(16),
                  );

                  flag = true;
                }
                setState(() {});
              },
              child: Text('foo animation'))
        ]),
      ),
    );
  }
}
