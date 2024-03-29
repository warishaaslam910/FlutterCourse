import 'package:flutter/material.dart';
import 'package:flutterapp08/circular.dart';

class Gridlayout extends StatefulWidget {
  const Gridlayout({super.key});

  @override
  State<Gridlayout> createState() => _GridlayoutState();
}

class _GridlayoutState extends State<Gridlayout> {
  var arraycolors = [
    Colors.teal,
    Colors.red,
    Colors.green,
    Colors.black,
    Colors.orange,
    Colors.yellow
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      itemBuilder: (context, index) {
        return InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Circular()));
            },
            child: Container(
              color: arraycolors[index],
            ));
      },
      gridDelegate:
          // SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        

       SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 300,
       childAspectRatio: 2),
      // ),
      itemCount: arraycolors.length,
    )

        // Column(
        //   children: [
        //     Container(
        //       width: 100,
        //       height: 100,
        //       color: Colors.orange,
        //       child: GridView.count(
        //         crossAxisCount: 3,
        //         mainAxisSpacing: 11,
        //         crossAxisSpacing: 11,
        //         children: [
        //           Container(
        //             color: arraycolors[0],
        //           ),
        //           Container(
        //             color: arraycolors[1],
        //           ),
        //           Container(
        //             color: arraycolors[2],
        //           ),
        //           Container(
        //             color: arraycolors[3],
        //           ),
        //           Container(
        //             color: arraycolors[4],
        //           ),
        //           Container(
        //             width: 100,
        //             color: arraycolors[5],
        //           ),
        //         ],
        //       ),
        //     ),
        //     Container(
        //       height: 300,
        //       child: GridView.extent(
        //         maxCrossAxisExtent: 100,
        //         children: [
        //           Container(
        //             color: arraycolors[0],
        //           ),
        //           Container(
        //             color: arraycolors[1],
        //           ),
        //           Container(
        //             color: arraycolors[2],
        //           ),
        //           Container(
        //             color: arraycolors[3],
        //           ),
        //           Container(
        //             color: arraycolors[4],
        //           ),
        //           Container(
        //             width: 100,
        //             color: arraycolors[5],
        //           ),
        //         ],
        //       ),
        //     )
        //   ],
        // ),
        );
  }
}
