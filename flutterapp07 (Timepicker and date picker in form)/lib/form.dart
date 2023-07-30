import 'package:flutter/material.dart';
import 'package:flutterapp08/myui/text.dart';

class form extends StatefulWidget {
  const form({super.key});

  @override
  State<form> createState() => _formState();
}

var username = TextEditingController();
var userpass = TextEditingController();
var useremail = TextEditingController();

class _formState extends State<form> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: SizedBox(
          width: 500,
          child: Column(
            children: [
              CircleAvatar(
                radius: 2,
              ),
              Text(
                "Sign Up",
                style: mytext2(),
              ),
              Container(
                height: 20,
              ),
              Text(
                "USERNAME",
                style: TextStyle(),
              ),
              TextField(
                controller: username,
                decoration: InputDecoration(
                    // labelText: 'User name : ',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Enter your username'),
              ),
              Container(
                height: 20,
              ),
              Text(
                "USER EMAIL",
                style: TextStyle(),
              ),
              TextField(
                controller: useremail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    // labelText: 'User Email : ',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Enter your email '),
              ),
              Container(
                height: 20,
              ),
//***********password */
              Text(
                "USER PASSWORD",
                style: TextStyle(),
              ),
              TextField(
                controller: userpass,
                keyboardType: TextInputType.number,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(

                    //  labelText: 'User Password : ',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Enter your password'),
              ),

              Container(
                height: 30,
              ),

              //*********DOB
              Container(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () async {
                        DateTime? datepicker = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2002),
                            lastDate: DateTime(2024));

                        if (datepicker != null) {
                          print(" selected  ${datepicker.day}");
                        }
                      },
                      child: SizedBox(
                        width: 500,
                        height: 20,
                        child: Wrap(
                          children: [
                            Text(
                              "Date of Birth",
                              style: TextStyle(),
                            ),
                            TextField(
                              decoration: InputDecoration(

                                  //  labelText: 'User Password : ',
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  hintText: 'Enter your date of birth'),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                suffixIcon: InkWell(
                                  child: Icon(Icons.alarm),
                                  onTap: () async {
                                    TimeOfDay? datepicker1 =
                                        await showTimePicker(
                                            context: context,
                                            initialTime: TimeOfDay.now(),
                                            initialEntryMode:
                                                TimePickerEntryMode.input);

                                    if (datepicker1 != null) {
                                      print(" Selected  ${datepicker1.hour}");
                                    }
                                  },
                                ),
                                //  labelText: 'User Password : ',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  height: 75,
                ),
              ),
              Container(
                child: Column(
                  children: [
                    // InkWell(
                    //   onTap: () async {
                    //     TimeOfDay? datepicker = await showTimePicker(
                    //         context: context,
                    //         initialTime: TimeOfDay.now(),
                    //         initialEntryMode: TimePickerEntryMode.input);

                    //     if (datepicker != null) {
                    //       print(" selected  ${datepicker.hour}");
                    //     }
                    //   },
                    SizedBox(
                      width: 500,
                      height: 20,
                      child: Wrap(
                        children: [
                          Text(
                            "TIME",
                            style: TextStyle(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(30.0)),
                    ElevatedButton(
                        onPressed: () {
                          String uname = username.text.toString();
                          String uemail = useremail.text.toString();
                          String upass = userpass.text;
                          print("User information\n");
                          print("User pass  ${upass} \n");
                          print("User Email ${uemail} \n");
                          print("User pass  ${upass} \n");
                        },
                        child: Text('SIGNUP'))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}


   //         InkWell(

            //               child:Text("DATE OF BIRTH "),
            //               onTap: (){
            //                 async {
            //   DateTime? datepicker = await showDatePicker(
            //       context: context,
            //       initialDate: DateTime.now(),
            //       firstDate: DateTime(2002),
            //       lastDate: DateTime(2024));

            //   if (datepicker != null) {
            //     print(" selected  ${datepicker.day}");
            //   }
            // };
            //               },
            //         ),
                