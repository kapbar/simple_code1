import 'package:flutter/material.dart';
import 'package:simple_code_lesson_2/constants/app_assets.dart';
import 'package:simple_code_lesson_2/constants/app_colors.dart';
import 'package:simple_code_lesson_2/constants/app_styles.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';
import 'package:simple_code_lesson_2/ui/login/widgets/login_text_field.dart';
import 'package:simple_code_lesson_2/ui/login/widgets/password_text_field.dart';
import 'package:simple_code_lesson_2/widgets/app_alert_dialog.dart';
import 'package:simple_code_lesson_2/widgets/app_button_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? login;
  String? password;
  bool _obscureText = true;

  final formKey = GlobalKey<FormState>();

  register() {
    final isValidated = formKey.currentState?.validate() ?? false;

    if (isValidated) {
      FocusScope.of(context).unfocus();
      formKey.currentState?.save();
      if (login == 'qwerty' && password == '123456ab') {
        Navigator.pushNamed(context, '/persons');
      } else {
        return showAlertDialog(context);
      }
    }
  }

  showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AppAlertDialog(
          title: Text(S.of(context).error),
          content: Text(S.of(context).wrongLoginOrPassword),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ligtTheme,
      body: Column(
        children: [
          Expanded(
            child: Image.asset(AppAssets.images.logo),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    S.of(context).login,
                    textAlign: TextAlign.start,
                    style: AppStyles.s14w400,
                  ),
                  LoginTextField(
                    onSaved: (login) {
                      this.login = login;
                    },
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    S.of(context).password,
                    textAlign: TextAlign.start,
                    style: AppStyles.s14w400,
                  ),
                  PasswordTextField(
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    onSaved: (value) {
                      password = value;
                    },
                    obscureText: _obscureText,
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () => register(),
                    style: AppButtonStyles.elevated1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          S.of(context).signIn,
                          style: const TextStyle(
                            color: AppColors.background,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${S.of(context).dontHaveAnAccountHint}?'),
                      TextButton(
                        child: Text(
                          S.of(context).create,
                          style: const TextStyle(color: AppColors.more1),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
