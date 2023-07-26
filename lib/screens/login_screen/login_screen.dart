import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';

late bool _passwodVisible;

class LoginScreen extends StatefulWidget {
  static String routeName = 'loginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwodVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/splash.png',
                  width: 150,
                  height: 150,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hi, ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.w100),
                    ),
                    Text(
                      'Student',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
                const SizedBox(
                  height: kDefaultPadding / 6,
                ),
                Text(
                  'Sign in to continue',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: kOtherColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(kDefaultPadding * 3),
                topRight: Radius.circular(kDefaultPadding * 3),
              ),
            ),
            child: Padding(
                padding: EdgeInsets.all(kDefaultPadding),
                child: Column(
                  children: [
                    Form(
                      child: Column(
                        children: [
                          SizedBox(
                            height: kDefaultPadding,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Phone number / Email address',
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(
                            height: kDefaultPadding,
                          ),
                          TextFormField(
                            validator: (value) {
                              RegExp regExp = new RegExp(emailPattern);
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              } else if (!regExp.hasMatch(value)) {
                                return 'Please enter valid email address';
                              }
                            },
                            decoration: InputDecoration(
                              hintText: 'Password',
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _passwodVisible = !_passwodVisible;
                                    });
                                  },
                                  icon: Icon(_passwodVisible
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility_outlined)),
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: _passwodVisible,
                          ),
                          SizedBox(
                            height: kDefaultPadding,
                          ),
                          s
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
