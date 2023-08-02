// import 'package:flutter/material.dart';
// import 'package:flutterapp17_sharedpreferences/Home.dart';

// import 'package:shared_preferences/shared_preferences.dart';


// class Login extends StatefulWidget {
//   const Login({super.key});

//   @override
//   State<Login> createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   @override
//   // void initState() {
//   //   // TODO: implement initState
//   //   super.initState();

//   //   reload();
//   // }

//   // var wacontroller = TextEditingController();

//   // var getres = "";

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           body: Center(
//               child: Column(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(80), bottomRight: Radius.circular(80)),
//             child: Image.asset(
//               "assets/images/pic1.jpg",
//               width: 100,
//               height: 100,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TextField(
            
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TextField(
            
//             ),
//           ),
//           ElevatedButton(
//               onPressed: () async {
              

//                 final SharedPreferences pref =
//                     await SharedPreferences.getInstance();

//                 pref.setBool("name", true);
//               },
//               child: Text("Save")),

//                ElevatedButton(onPressed: (){
//           Navigator.pushReplacement(
//               context, MaterialPageRoute(builder: (context) => Home()));
//         }, child: Text("LOG IN"))

//         ],
//       ))),
//     );
//   }

// //   void reload() async {
// //     final SharedPreferences pref = await SharedPreferences.getInstance();

// //     var getname = pref.getString("name");

// //     // getres=getname!;
// //     // getres=getname !=null ? getname :"value N/A";
// //     getres = getname ?? "value n/a";

// //     setState(() {});
// //   }
//  }
import 'package:flutter/material.dart';
import 'package:flutterapp17_sharedpreferences/Home.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var wacontroller = TextEditingController();
  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 15,
                child: Image.asset(
                  "assets/images/pic1.jpg",
                  width: 100,
                  height: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: wacontroller,
                  decoration: InputDecoration(
                    hintText: 'Username',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: passController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  // Add login validation logic here
                  String username = wacontroller.text;
                  String password = passController.text;

                  // For example, you can validate the login credentials using a hardcoded check
                  if (username == 'your_username' && password == 'your_password') {
                    final SharedPreferences pref =
                        await SharedPreferences.getInstance();
                    pref.setBool("isLoggedIn", true);

                    // Redirect to the Home page after successful login
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  } else {
                    // Show a snackbar or an alert for invalid credentials
                     Text('Invalid credentials');
                    
                  }
                },
                child: Text("Log In"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
