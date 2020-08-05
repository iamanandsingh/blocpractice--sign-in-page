import 'dart:async';

import 'package:blocpractice/src/blocs/validator.dart';

class Bloc extends Object with Validator{
  final _emailController= StreamController<String>();
  final _passwordController= StreamController<String>();

  Function(String) get emailInput=> _emailController.sink.add; 
  Function(String) get passwordInput=> _passwordController.sink.add;

  Stream<String> get emailOutput=>_emailController.stream.transform(emailValidator);
  Stream<String> get passwordOutput=>_passwordController.stream.transform(passwordValidator);

  dispose(){
    _emailController.close();
    _passwordController.close();
  }

}

final bloc=Bloc();