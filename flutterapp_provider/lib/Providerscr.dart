import 'package:flutter/material.dart';
import 'package:flutterapp_provider/Providers/Provider_class.dart';
import 'package:provider/provider.dart';

class Providerscr extends StatefulWidget {
  const Providerscr({super.key});

  @override
  State<Providerscr> createState() => _ProviderscrState();
}

class _ProviderscrState extends State<Providerscr> {
  String dropdownValue = 'USD';
  String dropdownValue1 = 'PKR';

  String result = "";

  TextEditingController userinput = TextEditingController();

  void convertCurrency(double rate) {
    final inputValue = double.tryParse(userinput.text);
    if (inputValue != null) {
      if (inputValue > rate) {
        final convertedValue = (inputValue / rate);
        setState(() {
          result = 'Converted: $convertedValue';
        });
      } else {
        final convertedValue = inputValue * rate;
        setState(() {
          result = 'Converted: $convertedValue';
        });
      }
    } else {
      setState(() {
        result = 'Invalid input';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Provider_class>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          "Currency Converter",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
        child: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  width: 190,
                  child: TextField(
                    controller: userinput,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: 'Input value to convert',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color.fromARGB(255, 8, 72, 114)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ///////////////////////// 1ST DROPDOWN LIST /////////////////////////////////////////////
                        Container(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Colors.white,
                            ),
                            child: Consumer<Provider_class>(
                              builder: (context, value1, child) {
                                List<String> currencies =
                                    value1.maprates.keys.toList();
                                return DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: dropdownValue1,
                                    items: currencies.map((String currency1) {
                                      return DropdownMenuItem<String>(
                                        value: currency1,
                                        child: Text(
                                          " $currency1",
                                          style: TextStyle(
                                              color: Colors.blue[900],
                                              fontWeight: FontWeight.bold),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownValue1 = newValue!;
                                      });
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        FloatingActionButton(
                            onPressed: () {},
                            child: Icon(Icons.swap_horiz),
                            elevation: 2.0,
                            backgroundColor:
                                const Color.fromARGB(255, 37, 33, 243)),

                        //////////////////////////////////////// 2ND DROP DOWNLIST ////////////////
                        Container(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Colors.white,
                            ),
                            child: Consumer<Provider_class>(
                              builder: (context, value, child) {
                                List<String> currencies =
                                    value.maprates.keys.toList();
                                return DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: dropdownValue,
                                    items: currencies.map((String currency) {
                                      return DropdownMenuItem<String>(
                                        value: currency,
                                        child: Text(
                                          " $currency",
                                          style: TextStyle(
                                              color: Colors.blue[900],
                                              fontWeight: FontWeight.bold),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownValue = newValue!;
                                      });
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Result",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              result,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 235, 71, 7),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      provider.getapidata();
                    },
                    child: Text("SELECT"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 47, 33, 243)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    final selectedRate = provider.maprates[dropdownValue];

                    if (selectedRate != null) {
                      convertCurrency(selectedRate);
                    }
                  },
                  child: Text("CONVERT"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 47, 33, 243)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutterapp_provider/Providers/Provider_class.dart';
// import 'package:provider/provider.dart';

// class Providerscr extends StatefulWidget {
//   const Providerscr({super.key});

//   @override
//   State<Providerscr> createState() => _ProviderscrState();
// }
// class _ProviderscrState extends State<Providerscr> {
//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<Provider_class>(context, listen: false);
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: Text(
//           "Currency Converter",
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: Center(
//         child: Container(
//           child: SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: Column(
//               children: [
//                 Consumer<Provider_class>(
//                   builder: (context, value, child) {
//                     return ListView.builder(
//                       shrinkWrap: true,
//                       itemCount: value.maprates.length,
//                       itemBuilder: (context, index) {
//                         final currency = value.maprates.keys.elementAt(index);
//                         final rate = value.maprates[currency];

//                         return ListTile(
//                           title: Text(currency),
//                           subtitle: Text(rate.toStringAsFixed(2)),
//                         );
//                       },
//                     );
//                   },
//                 ),
//                 ElevatedButton(
//                     onPressed: () {
//                       provider.getapidata();
//                     },
//                     child: Text("Press")),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


// class _ProviderscrState extends State<Providerscr> {
//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<Provider_class>(context, listen: false);
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: Text(
//           "Currency Converter",
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: Center(
//         child: Container(
//           child: SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: Column(
//               children: [
//                 Consumer<Provider_class>(
//                   builder: (context, value, child) {
//                     return ListView.builder(
//                         shrinkWrap: true,
//                         itemCount: value.maprates.length,
//                         itemBuilder: (context, index) {
//                           if (value.isloading) {
//                             return Center(
//                               child: Column(
//                                   children: [CircularProgressIndicator()]),
//                             );
//                           }
//                           if (value.error) {
//                             return Center(
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text("Error: ${value.error.toString()}"),
//                                 ],
//                               ),
//                             );
//                           } else {
//                             final currency =
//                                 value.maprates.keys.elementAt(index);
//                             final rate = value.maprates[currency];

//                             return ListTile(
//                               title: Text(currency),
//                               subtitle: Text(rate.toStringAsFixed(2)),
//                             );
//                           }
//                         });
//                   },
//                 ),
//                 ElevatedButton(
//                     onPressed: () {
//                       provider.getapidata();
//                     },
//                     child: Text("Press")),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
