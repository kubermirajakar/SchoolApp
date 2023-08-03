import 'package:flutter/material.dart';
import 'package:schoolapp/components/customs_buttons.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/screens/home_screen/home_screen.dart';

late bool _passwodVisible;

class LoginScreen extends StatefulWidget {
  static String routeName = 'loginScreen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
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
                      key: _formKey,
                      child: Column(
                        children: [
                          sizedBox,
                          TextFormField(
                            initialValue: 'abc@xyz.com',
                            validator: (value) {
                              RegExp regExp = RegExp(emailPattern);
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              } else if (!regExp.hasMatch(value)) {
                                return 'Please enter valid email address';
                              }
                            },
                            decoration: const InputDecoration(
                              hintText: 'Phone number / Email address',
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          sizedBox,
                          TextFormField(
                            initialValue: '123456',
                            validator: (value) {
                              if (value!.isEmpty || value.length < 6) {
                                return 'Please enter valid Password';
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
                          sizedBox,
                          DefaultButton(
                            icon: Icons.arrow_forward_outlined,
                            title: 'SIGN IN',
                            onPress: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.pushNamedAndRemoveUntil(context,
                                    HomeScreen.routeName, (route) => false);
                              }
                            },
                          ),
                          sizedBox,
                          const Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              'Forgot Password ?',
                              textAlign: TextAlign.end,
                              style:
                                  TextStyle(color: kPrimaryColor, fontSize: 15),
                            ),
                          ),
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
