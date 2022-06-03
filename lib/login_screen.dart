import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _logincontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final formKey = GlobalKey<FormState>();

  register() {
    formKey.currentState?.validate();
    final login = _logincontroller.text;
    final password = _passwordcontroller.text;
    
    if (login.length >= 3 && password.length >= 8) {
      FocusScope.of(context).unfocus();
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
          title: const Text('Попробуйте снова'),
          actions: [
            ElevatedButton(
              child: const Text('Закрыть'),
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
        title: const Text('Авторизация'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              const Spacer(),
              const Text(
                'Введите логин и пароль',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: _logincontroller,
                maxLength: 8,
                validator: (value) {
                  if (value!.length < 3) {
                    return 'Логин должен содержать не менее 3 символов';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  hintText: 'Логин',
                  hintStyle: TextStyle(fontSize: 19),
                ),
              ),
              const SizedBox(height: 6),
              TextFormField(
                controller: _passwordcontroller,
                obscureText: true,
                maxLength: 16,
                validator: (value) {
                  if (value!.length < 8) {
                    return 'Пароль должен содержать не менее 8 символов';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  hintText: 'Пароль',
                  hintStyle: TextStyle(fontSize: 19),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () => register(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Вход',
                      style: TextStyle(fontSize: 18),
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
