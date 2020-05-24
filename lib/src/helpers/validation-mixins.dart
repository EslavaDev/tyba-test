class ValidationMixins {
  String validateEmail(String value) {
     if(value.isEmpty){
      return 'Email required';
    }
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    var regex = RegExp(pattern);
    var validate = (!regex.hasMatch(value)) ? false : true;
    if (validate) {
      return null;
    }
    return 'Email invalid';
  }
  String validatePassword(String value) {
    if(value.isEmpty){
      return 'Password required';
    }
     if(value.length > 6){
     return null ;
     } 
     return 'Password Error';
  }
}
