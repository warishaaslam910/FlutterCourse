import 'package:flutter/material.dart';



class timepicker extends StatefulWidget {
  const timepicker({super.key});

  @override
  State<timepicker> createState() => _timepickerState();
}

class _timepickerState extends State<timepicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: TextField(
                            decoration: InputDecoration(
                              suffixIcon: InkWell(
                                child: Icon(Icons.alarm),
                                onTap: () async {
                                  TimeOfDay? datepicker1 = await showTimePicker(
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
    ));
  }
}