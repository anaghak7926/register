import 'package:example/screen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'screen1.dart';

class register extends StatelessWidget {
   register({super.key});
  final myController = TextEditingController();
  // final myCon = TextEditingController();
   final myCont = TextEditingController();
  // register(this.myController, this.myCont);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          color: Colors.pinkAccent,
          padding: EdgeInsets.all(20),
          //height: (500),

          child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
            SizedBox(height: 50),
            CircleAvatar(
              radius: 20,
              child: Icon(Icons.account_circle_rounded),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              width: 200,
              height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                onChanged: (text) {

                },
                controller: myController,
                decoration: InputDecoration(
                  labelText: 'Enter user email id',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40)
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              width: 200,
              height: 50,
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
              child: //Row(children:[
                TextField(
                  controller: myCont,
                  onChanged: (text) {

                  },
                  decoration: InputDecoration(
                    labelText: 'Enter user password',
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)

                    ),
                  ),
                ),
                //Icon(Icons.import_contacts_sharp),
             // ]),
            ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  width: 70,
                  height: 30,
                      decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {
                    // print('hello');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Example(
                          email: myController.text,
                          password: myCont.text,

                        )),
                      );
                      print(myController.text);
                      print(myCont.text);

                    },
                    child: Text('login'),
                    ),
                  ),
               // SizedBox(width: 20,),
                Text('Forgot Password'),
               // SizedBox(width: 20,),
                Text('Not a member? sign up now'),
          ]),
        ),
      ),
    );
  }
}
