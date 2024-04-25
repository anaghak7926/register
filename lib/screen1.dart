import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  const Example({super.key,required  this.email, required  this.password});
  final String email;
  final String password;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Container(
          color: Colors.blueGrey,

          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
              children: [
              SizedBox(height: 50), // Add SizedBox for spacing
          CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
          ),
          Text('Moonga'),
              Text(
                'moonga@gamil.com',
                style: TextStyle(
                  fontSize: 18.0,
                  decoration: TextDecoration.underline,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                  width: 200,
                  height: 50,
                  color: Colors.white,
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Icon(Icons.remove_red_eye),
                    SizedBox(width: 20,),
                    Text('User Password: $password',),
                  ],
                )


              ),

              Container(
                  width: 200,
                  height: 50,
                  color: Colors.white,
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Icon(Icons.add_card_rounded),
                      SizedBox(width: 20,),
                      Text('User Email: $email'),
                    ],
                  )


              ),
          ]
          ),
        ),
      ),
    );
  }
}
