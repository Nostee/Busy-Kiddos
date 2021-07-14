//import 'package:busy_kiddos/screens/difficulty.dart';
import 'package:flutter/material.dart';
import 'package:busy_kiddos/services/authenticator.dart';

String sub= "";

class FinalHome extends StatefulWidget {
  @override
  _FinalHomeState createState() => _FinalHomeState();
}
void difficulty(){

}
class _FinalHomeState extends State<FinalHome> {

  void signout() async
  {
    dynamic check = Authenticator().signOut();
    print("(home.dart)The data in the dynamic check is: $check"); // debug
    if (check != null) {
      Navigator.pushReplacementNamed(context, "loginlogin.dart");
    } else {
      print("(home.dart)Logout failed."); // debug
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        //child: ListView(
          //child: [
            child: ListView(
              children: [
                // Padding(
                // padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                //     child: ElevatedButton(
                //       onPressed:  (){},child: Text("Sign Out"),
                //     style: ElevatedButton.styleFrom(
                //       primary: Colors.blue,
                //       textStyle: TextStyle(
                //         fontSize: 20
                //       )
                //     )   
                //     )
                // ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/icon.jpg',
                      width: 200,
                      height: 200,
                    fit: BoxFit.contain,
                    ),
                  ],
                ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,180,0),
                        child: Text("Name of the Kid"),
                      ),
                    ],
                  ),
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 100,0,0),
                        child: ElevatedButton(onPressed:(){Navigator.pushNamed( context, "difficulty.dart"); sub="English";}, child: Text("ENGLISH"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          textStyle:  TextStyle(
                            fontSize: 40 )
                        ) ,),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 40, 0,0),
                        child: ElevatedButton(onPressed: (){Navigator.pushNamed( context, "difficulty.dart");sub="Science";}, child: Text("SCIENCE"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.yellow,
                          textStyle:  TextStyle(
                            fontSize: 40 )
                        ) 
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 40,0,0),
                        child: ElevatedButton(onPressed: (){Navigator.pushNamed( context, "difficulty.dart"); sub="Math";}, child: Text("  MATH  "),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          textStyle:  TextStyle(
                            fontSize: 40 )
                        ) 
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.fromLTRB(0,70, 0, 0),
                        child: ElevatedButton(
                        onPressed:  (){
                          signout();
                        },
                        child: Text("Sign Out"),
                        style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        textStyle: TextStyle(
                         fontSize: 30
                       )
                     )   
                     )
                 ),
                    ],
                  ),
                ),
                 
              ], 
            ), 

          //]
      ),
    );
  }
}