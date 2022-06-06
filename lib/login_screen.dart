import 'package:flutter/material.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? login;
  String? password;

  final formKey = GlobalKey<FormState>();

  register() {
    final isValidated = formKey.currentState?.validate() ?? false;

    if (isValidated) {
      FocusScope.of(context).unfocus();
      formKey.currentState?.save();
      if (login == 'qwerty' && password == '123456ab') {
        Navigator.pushNamed(context, '/home');
      } else {
        return showAlertDialog(context);
      }
    }
  }

  showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(S.of(context).tryAgain),
          actions: [
            ElevatedButton(
              child: Text(S.of(context).close),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).auth),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              const Spacer(),
              Text(
                S.of(context).inputLoginAndPassword,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              const SizedBox(height: 8),
              TextFormField(
                maxLength: 8,
                validator: (value) {
                  if (value!.trim().isEmpty) return S.of(context).inputErrorCheckLogin;
                  if (value.length < 3) {
                    return S.of(context).inputErrorLoginIsShort;
                  }
                  return null;
                },
                onSaved: (value) {
                  login = value;
                },
                decoration: InputDecoration(
                  labelText: S.of(context).login,
                ),
              ),
              const SizedBox(height: 6),
              TextFormField(
                obscureText: true,
                maxLength: 16,
                validator: (value) {
                  if (value!.trim().isEmpty) return S.of(context).inputErrorCheckPassword;
                  if (value.length < 8) {
                    return S.of(context).inputErrorPasswordIsShort;
                  }
                  return null;
                },
                onSaved: (value) {
                  password = value;
                },
                decoration: InputDecoration(
                  hintText: S.of(context).password,
                  hintStyle: const TextStyle(fontSize: 19),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () => register(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).signIn,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
