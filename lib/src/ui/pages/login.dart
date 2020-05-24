import 'package:custom1/src/states/auth.dart';
import 'package:flutter/material.dart';
import 'package:custom1/src/helpers/router-path.dart' as router;
import 'package:custom1/src/ui/template/layout.dart';
import 'package:custom1/src/helpers/validation-mixins.dart';
import 'package:provider/provider.dart';
import 'package:toast/toast.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with ValidationMixins {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  bool _validate = false;
  String _email = '';
  String _password = '';
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AuthProvider>(context, listen: false);

    return Scaffold(
      body: LayoutCustom(
        safeArea: false,
        type: 2,
        onlyStack: false,
        backgrounColor: Color(0xFFFAD1CF),
        child: [
          Positioned(
            width: MediaQuery.of(context).size.width,
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: Form(
                autovalidate: _validate,
                key: _formKey,
                child: Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Center(
                      child: Container(
                        width: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              'Iniciar Sesión',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            TextFormField(
                              autofocus: true,
                              keyboardType: TextInputType.emailAddress,
                              validator: validateEmail,
                              onSaved: (newValue) {
                                _email = newValue;
                              },
                              decoration: InputDecoration(
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 2.0,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(),
                                ),
                                hintText: 'you@email.com',
                                labelText: 'Email',
                                contentPadding: const EdgeInsets.fromLTRB(
                                    6, 6, 48, 6), // 48 -> icon width
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Stack(
                              fit: StackFit.loose,
                              children: <Widget>[
                                TextFormField(
                                  keyboardType: TextInputType.text,
                                  obscureText: _obscureText,
                                  onSaved: (newValue) {
                                    setState(() {
                                      _password = newValue;
                                    });
                                  },
                                  validator: validatePassword,
                                  decoration: InputDecoration(
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(
                                        color: Colors.red,
                                        width: 2.0,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(),
                                    ),
                                    labelText: 'Password',
                                    contentPadding: const EdgeInsets.fromLTRB(
                                        6, 6, 48, 6), // 48 -> icon width
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: IconButton(
                                    icon: Icon(_obscureText
                                        ? Icons.lock_outline
                                        : Icons.lock_open),
                                    onPressed: () {
                                      FocusScope.of(context)
                                          .requestFocus(FocusNode());
                                      _toggle();
                                      // Your codes...
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 50,
                      height: 80,
                      width: 80,
                      top: -35,
                      child: RaisedButton(
                        shape: CircleBorder(),
                        elevation: 4,
                        color: Color(0xFFFF6362),
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            // No any error in validation
                            _formKey.currentState.save();
                            print('Mobile $_email');
                            print('Email $_password');
                            try {
                              await provider.signIn(_email, _password);
                            } catch (e) {
                              Toast.show(
                                  'usuario o contraseña incorrecta', context);
                            }
                          } else {
                            // validation error
                            setState(() {
                              _validate = true;
                            });
                          }
                        },
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width / 2.5,
                      bottom: 30,
                      child: RaisedButton(
                        color: Colors.white,
                        elevation: 2,
                        shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side:
                                BorderSide(color: Color(0xFFFF6362), width: 2)),
                        onPressed: () {
                          Navigator.of(context).pushNamed(router.RegisterRoute);
                        },
                        child: Text(
                          'Registrar',
                          style: TextStyle(
                              color: Color(0xFFFF6362),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
