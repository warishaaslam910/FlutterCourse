// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';

// class Searchlocation extends StatefulWidget {
//   const Searchlocation({super.key});

//   @override
//   State<Searchlocation> createState() => _SearchlocationState();
// }

// class _SearchlocationState extends State<Searchlocation> {
//   late String response;
//   late Map response_map;
//   late List response_list = [];
//   TextEditingController searchcontroller = TextEditingController();

//   Future getapi(String searchval) async {
//     String searchinput = searchval;
//     print("search value smas=>" + searchinput);
//     String request =
//         "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=Paris&types=geocode&key=AIzaSyAwo0laaXX_Kx3bf6oANDdcPmOnJglnyn4";
//     http.Response response = await http.get(Uri.parse(request));
//     print("apidata = " + response.body);
//     if (response.statusCode == 200) {
//       setState(() {
//         response_map = jsonDecode(response.body);
//         response_list = response_map["predictions"];
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Your Location "),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: searchcontroller,
//               decoration: InputDecoration(
//                   prefixIcon: Icon(Icons.search), hintText: "Search here"),
//               onChanged: (value) {
//                 getapi(value);
//                 print("search value =>" + value);
//                 setState(() {});
//               },
//             ),
//             Expanded(
//                 child: ListView.builder(
//                     itemCount: response_list == null ? 0 : response_list.length,
//                     itemBuilder: (context, index) {
//                       var data = response_list[index];
//                       return ListTile(
//                           leading: Icon(Icons.map),
//                           title: Text(data["description"]));
//                     }))
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Searchlocation {
  late String response;
  late Map response_map;
  late List response_list = [];
  TextEditingController searchcontroller = TextEditingController();

  Future getapi(String searchval) async {
    String searchinput = searchval;
    print("search value smas=>" + searchinput);
    String request =
        "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$searchinput&types=geocode&key=AIzaSyAwo0laaXX_Kx3bf6oANDdcPmOnJglnyn4";
    http.Response response = await http.get(Uri.parse(request));
    print("apidata = " + response.body);
    if (response.statusCode == 200) {
      response_map = jsonDecode(response.body);
      response_list = response_map["predictions"];
    }
  }
}
