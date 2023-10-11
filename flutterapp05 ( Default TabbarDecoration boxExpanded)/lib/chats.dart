import 'package:flutter/material.dart';
import 'package:flutterapp06/tabs.dart';
import 'package:intl/intl.dart';
class chats extends StatefulWidget {
  const chats({super.key});

  @override
  State<chats> createState() => _chatsState();
}

class _chatsState extends State<chats> {
  
  var ima = [
    // Image.asset("assets/images/chaticon.png;"),
    // Image.asset("assets/images/chaticon.png;"),
    // Image.asset("assets/images/chaticon.png;"),
    "https://toppng.com/public/uploads/preview/user-account-management-logo-user-icon-11562867145a56rus2zwu.png",
    "https://registrar.psu.edu/assets/images/icons/enrollment/person-icon.jpg",
    "https://registrar.psu.edu/assets/images/icons/enrollment/person-icon.jpg",
    "https://registrar.psu.edu/assets/images/icons/enrollment/person-icon.jpg",
    "https://registrar.psu.edu/assets/images/icons/enrollment/person-icon.jpg",

     "https://registrar.psu.edu/assets/images/icons/enrollment/person-icon.jpg",
    "https://registrar.psu.edu/assets/images/icons/enrollment/person-icon.jpg",
    "https://registrar.psu.edu/assets/images/icons/enrollment/person-icon.jpg",
    "https://registrar.psu.edu/assets/images/icons/enrollment/person-icon.jpg",
    "https://registrar.psu.edu/assets/images/icons/enrollment/person-icon.jpg",
  ];
  
  @override
  Widget build(BuildContext context) {
    var time=DateTime.now();
    return Scaffold(
      
     body: ListView.separated(
      
        itemCount: ima.length,
      itemBuilder: (context, index) {
        return 
        InkWell(
           child:ListTile(
          // tileColor: isSelected ? Colors.blue : null, 
          
           tileColor: Colors.white,
          // selected: true,
          leading: CircleAvatar(backgroundImage:NetworkImage(ima[index]) ,),
         
          title: Text("user ${index+1}"),
          subtitle: Text("Hello!  there I am using Mybook"),
         
          
          trailing: Text("${DateFormat('jm').format(time)}"),
          
      
        ),
        
        );
       
      },
    
    separatorBuilder: (context, index) {
      return Divider(thickness: 1,color: Color.fromRGBO(0, 0, 0, 0.39),);
    },
    )
    
    
    );
  }
}
