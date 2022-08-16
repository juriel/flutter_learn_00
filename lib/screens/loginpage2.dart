import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({Key? key}) : super(key: key);

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  GlobalKey formKey = GlobalKey<FormState>();
  String userName = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        // Column is also a layout widget. It takes a list of children and
        // arranges them vertically. By default, it sizes itself to fit its
        // children horizontally, and tries to be as tall as its parent.
        //
        // Invoke "debug painting" (press "p" in the console, choose the
        // "Toggle Debug Paint" action from the Flutter Inspector in Android
        // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
        // to see the wireframe for each widget.
        //
        // Column has various properties to control how it sizes itself and
        // how it positions its children. Here we use mainAxisAlignment to
        // center the children vertically; the main axis here is the vertical
        // axis because Columns are vertical (the cross axis would be
        // horizontal).
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: "Usuario:",
              border: OutlineInputBorder(),
              hintText: 'Usuario',
            ),
            onSaved: (value) {
              userName = value!;
            },
          ),
          TextFormField(
            
            decoration: InputDecoration(
              labelText: "Contraseña:",
              border: OutlineInputBorder(),
              hintText: 'Contraseña',
            ),
          ),
          ElevatedButton(child: Text("Ingresar "+userName), onPressed: () => {
            this.setState(() {
              
              userName = "Presion "+formKey.currentWidget.toString();;
            })
          })
        ],
      ),
    );
  }
}
