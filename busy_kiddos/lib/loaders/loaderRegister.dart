import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:busy_kiddos/services/authenticator.dart';
import 'package:busy_kiddos/widgets/loadingText.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:busy_kiddos/models/user.dart';

// this is called by register.dart

class LoaderRegister extends StatefulWidget {
  @override
  _LoaderRegisterState createState() => _LoaderRegisterState();
}

class _LoaderRegisterState extends State<LoaderRegister> {
  int run = 1;
  Map fetchedData;
  dynamic temporaryData;
  dynamic uid;

  Future<void> fetchingData() async
  {
    try
    {
      print("(loaderRegister.dart)Fetched mapped data is $fetchedData"); // debug
      print("(loaderRegister.dart)Trying to register with these data..."); // debug
      temporaryData = await Authenticator().register(fetchedData["email"],fetchedData["password"]);
      print("(loaderRegister.dart)Temporary data: $temporaryData"); // debug

      await Future.delayed(Duration(seconds: 3),() {
		  print("3 seconds has passed.");
		  });

      if(temporaryData!=null)
      {
        print("USER IS REGISTERED. ONLY ONCE.");
        
        final FirebaseAuth auth = FirebaseAuth.instance;
        final FirebaseUser user = await auth.currentUser();
        final uid = user.uid;
        print(uid);

        await Authenticator(uid: uid).passNullStarterData(fetchedData["username"]);
        Navigator.pushNamedAndRemoveUntil(context, "home.dart", (route) => false);


      }
      else
      {
        Navigator.pop(context, {
          "error" : "Email invalid. Please try again, noob."
        });
      }
    }
    catch(e)
    {
      print("(loaderRegister.dart)An error occured!"); // debug
      print("(loaderRegister.dart)ERROR: $e"); // debug
    }
  }

  @override
  Widget build(BuildContext context) {
    fetchedData = ModalRoute.of(context).settings.arguments;
    print("THIS WIDGET RUNNED FOR "+run.toString()+" TIMES ALREADY");
    if(run==1)
    {
      fetchingData();
    }
    run = run+1;
    
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: SpinKitCubeGrid(
              color: Colors.white,
              size: 100.0,        
              )
            ),
            Center(
              child: SizedBox(height:40)
            ),
            Center(
              child: LoadingText()
            ),
        ],)
      );
  }
}