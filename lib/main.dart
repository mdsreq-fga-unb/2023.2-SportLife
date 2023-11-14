import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Awesome Diolog App",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome Diologs"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(50),
          child: Column(
            children: [
              AnimatedButton(
                text: "Warning Diolog",
                color: Colors.orange,
                pressEvent: () {
                  AwesomeDialog(
                          context: context,
                          dialogType: DialogType.warning,
                          animType: AnimType.topSlide,
                          showCloseIcon: true,
                          title: "Warning",
                          desc:
                              "this is the description of the Awesome diolog box",
                          //action to perform on cancel and ok buttons
                          btnCancelOnPress: () {},
                          btnOkOnPress: () {})
                      .show();
                },
              ),
              SizedBox(height: 16),
              AnimatedButton(
                text: "Error Diolog",
                color: Colors.red,
                pressEvent: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.error,
                    animType: AnimType.topSlide,
                    showCloseIcon: true,
                    title: "Error",
                    desc: "this is the description of the Awesome diolog box",
                    //action to perform on cancel and ok buttons
                    btnOkOnPress: () {},
                    btnCancelIcon: Icons.cancel,
                    btnOkColor: Colors.red,
                  ).show();
                },
              ),
              SizedBox(height: 16),
              AnimatedButton(
                text: "Warning Diolog",
                color: Colors.amber,
                pressEvent: () {
                  AwesomeDialog(
                          context: context,
                          dialogType: DialogType.question,
                          animType: AnimType.bottomSlide,
                          showCloseIcon: true,
                          title: "Warning",
                          desc:
                              "this is the description of the Awesome diolog box",
                          //action to perform on cancel and ok buttons

                          btnOkOnPress: () {})
                      .show();
                },
              ),
              SizedBox(height: 16),
              AnimatedButton(
                text: "Success Diolog",
                color: Colors.green,
                pressEvent: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.success,
                    animType: AnimType.bottomSlide,
                    showCloseIcon: true,
                    title: "Success",
                    desc: "this is the description of the Awesome diolog box",
                    //action to perform on cancel and ok buttons
                    btnOkOnPress: () {},
                    //btnCancelOnPress: () {},
                  ).show();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
