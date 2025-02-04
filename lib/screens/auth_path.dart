import 'package:flutter/material.dart';
import 'package:uhi/components/login_form.dart';
import 'package:uhi/utils/config.dart';

import '../components/social_button.dart';
import '../utils/text.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal:15,
            vertical: 15,
          ),
      child: SafeArea(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            AppText.enText['welcome_text']!,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          Config.spaceSmall,
          Text(AppText.enText['signIn_text']!,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          ),
          Config.spaceSmall,
          const LoginForm(),
          Config.spaceSmall,
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
              AppText.enText['forgot-password']!,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              ),
            ),
          ),
          //adding Social Buttons
          const Spacer(),
          Center(
            child: Text(
              AppText.enText['social-login']!,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.grey.shade500,
              ),
            ),
          ),
          Config.spaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              SocialButton(social: 'google'),
              SocialButton(social: 'facebook'),
            ],
          ),
          Config.spaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                    AppText.enText['signUp_text']!,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey.shade500,
                ),
              ),
              Text(
                'Sign Up',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

            ],
          )
        ],
      )),),
    );
  }
}
