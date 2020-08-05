import 'package:blocpractice/src/blocs/bloc.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          emailField(),
          paswordField(),
          SizedBox(height: 10),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField() {
    return StreamBuilder(
        stream: bloc.emailOutput,
        builder: (context, snapshot) {
          return TextField(
            onChanged: bloc.emailInput,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "enter email",
              hintText: "enter email",
              errorText: snapshot.error,
            ),
          );
        });
  }

  Widget paswordField() {
    return StreamBuilder(
        stream: bloc.passwordOutput,
        builder: (context, snapshot) {
          return TextField(
            onChanged: bloc.passwordInput,
            decoration: InputDecoration(
                labelText: "enter password",
                errorText: snapshot.error),
          );
        });
  }

  Widget submitButton() {
    return RaisedButton(
      onPressed: () {
        bloc.dispose();
      },
      child: Text("Submit"),
    );
  }
}
