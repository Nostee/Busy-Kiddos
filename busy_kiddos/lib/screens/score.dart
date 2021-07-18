import 'package:flutter/material.dart';

class Score extends StatefulWidget {
  @override
  _ScoreState createState() => _ScoreState();
}



class _ScoreState extends State<Score> {
  Map score;
  @override
  Widget build(BuildContext context) {
    score = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
        child: Form(
          child: ListView(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Text("CONGRATULATIONS!!!",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'LoveYaLikeASister',
                    color: Colors.green,
                    fontWeight: FontWeight.bold)
                    ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Text("YOUR SCORE IS: ",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'LoveYaLikeASister',
                    color: Colors.pink,
                    fontWeight: FontWeight.bold)
                    ),
                ),
              ),
              Center(
                child: Padding(
                        padding: const EdgeInsets.fromLTRB(0,40,0,0),
                        child: Text("${score['score']}",
                          style: TextStyle(
                            fontSize: 150,
                            fontFamily: 'LoveYaLikeASister',
                            color: Colors.blue
                          )
                        ),
                      ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                  child: ElevatedButton.icon(
                    onPressed: (){
                      Navigator.pushNamedAndRemoveUntil(
                                context, "homeFinal.dart", (route) => false);
                      }, 
                    icon: Icon(
                      Icons.home
                    ), 
                    label: Text("Home"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.yellow,
                      textStyle: TextStyle(
                        fontSize: 20
                      )
                    )
                    ) 
                  ),
              ),
              

            ],
          ),
        ),
      )
    );
  }
}