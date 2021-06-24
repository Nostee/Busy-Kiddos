import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
<<<<<<< HEAD
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Center(child: Text("WELCOME",
          style: TextStyle(
            fontSize: 30
          )
          )),
          Center(child: Text("TO",
          style: TextStyle(
            fontSize: 30
          )
          )),
          Center(child: Text("BUSY KIDDOS",
          style: TextStyle(
            fontSize: 30
          )
          )),
        ],
      ),
    );
  }
}
=======
      body: ListView(
        children: [
          SizedBox(height:50),
          Center(child: Text("WELCOME",
            style: TextStyle(
              fontSize: 40
            )
          )),
          Center(child: Text("TO",
            style: TextStyle(
              fontSize: 40
            )
          )),
          Center(child: Text("BUSY KIDDOS",
            style: TextStyle(
              fontSize: 40
            )
          )),
          SizedBox(height:50),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: Row(
              children: [
                Text("Email: ",
                  style: TextStyle(
                    fontSize: 20
                  )
                ),
                Expanded(child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                  child: TextFormField(),
                )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: Row(
              children: [
                Text("Password: ",
                  style: TextStyle(
                    fontSize: 20
                  )
                ),
                Expanded(child: TextFormField()),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(150, 0, 30, 0),
                child: TextButton(onPressed: (){}, child: Text("LOGIN")),
              )
            ],
          )
        ],
      )
    );
  }
}

// WIDGET, PROPERTIES, OBJECTS
>>>>>>> 4aa651fa9fc6b68f249dbcf15a133c248f0a0717
