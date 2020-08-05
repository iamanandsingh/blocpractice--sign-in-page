import 'dart:async';

class Validator{
  final emailValidator= StreamTransformer<String,String>.fromHandlers(
    handleData: (email, sink) {
      if( email.contains('@')){
        sink.add(email);
      }
      else
      sink.addError("Enter valid email");
    },
  );

  final passwordValidator= StreamTransformer<String,String>.fromHandlers(
    handleData: (password, sink) {
      if(password.length>4){
        sink.add(password);
      }
      else
      sink.addError("Enter password greater thn 4 char");
    },
  );
}
