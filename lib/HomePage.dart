

import 'package:flutter/material.dart';
import 'package:hw_1/model/user_model.dart';
import 'package:hw_1/service/user_service.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 215, 129, 158),
        
      ),
      body: FutureBuilder<List<UserModel>>(
        future: getUserData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
             return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                 

              return ListTile(
              
              title: Text(snapshot.data![index].name),
              subtitle: Text(snapshot.data![index].username),
              
             trailing: Text(snapshot.data![index].email),
               );
             
             
              });
              
          } else if(snapshot.hasError){
            return Text("No data");
          }
          
          else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
