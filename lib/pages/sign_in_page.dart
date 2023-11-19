import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late FToast fToast;
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  bool isShowPasswordError = false;
  bool isRememberMe = false;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          title(),
          emailInput(),
          passwordInput(),
          rememberCheckbox(),
          loginButton(),
          Center(
            child: Container(
                margin: const EdgeInsets.only(
                  top: 24,
                ),
                child: Text(
                  'OR',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                )),
          ),
          loginWithGoogleButton(),
          registerButton(),
        ],
      ),
    );
  }

  Widget title() {
    return Container(
      margin: const EdgeInsets.only(
        top: 84,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: blackAccentTextStyle.copyWith(
              fontSize: 24,
              fontWeight: bold,
            ),
          ),
          Text(
            'to your account',
            style: blackAccentTextStyle.copyWith(
              fontSize: 24,
              fontWeight: bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 130,
                height: 4,
                margin: const EdgeInsets.only(right: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: kBlackColor,
                ),
              ),
              Container(
                width: 8,
                height: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: kBlackColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget emailInput() {
    return Container(
      margin: const EdgeInsets.only(
        top: 48,
      ),
      padding: const EdgeInsets.only(
        top: 17,
        right: 16,
        bottom: 17,
        left: 16,
      ),
      decoration: BoxDecoration(
        color: kWhiteGreyColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextFormField(
        controller: emailController,
        decoration: InputDecoration.collapsed(
          hintText: 'Email',
          hintStyle: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }

  Widget passwordInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 32,
          ),
          padding: const EdgeInsets.only(
            top: 17,
            right: 16,
            bottom: 17,
            left: 16,
          ),
          decoration: BoxDecoration(
            color: kWhiteGreyColor,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration.collapsed(
                      hintText: 'Password',
                      hintStyle: greyTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      )),
                ),
              ),
              Icon(
                Icons.visibility_outlined,
                color: kGreyColor,
              )
            ],
          ),
        ),
        if (isShowPasswordError)
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              'Invalid password',
              style: redTextStyle,
            ),
          ),
      ],
    );
  }

  Widget rememberCheckbox() {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      child: Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: Checkbox(
              value: isRememberMe,
              onChanged: (value) {
                setState(() {
                  isRememberMe = value!;
                });
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          const Text('Remember me')
        ],
      ),
    );
  }

  Widget loginButton() {
    return Container(
      height: 56,
      width: double.infinity,
      margin: const EdgeInsets.only(
        top: 32,
      ),
      child: TextButton(
        onPressed: () {
          setState(() {
            isLoading = true;
          });

          Future.delayed(const Duration(seconds: 2), () {
            setState(() {
              isLoading = false;
            });

            if (passwordController.text != '123') {
              setState(() {
                isShowPasswordError = true;
              });
              fToast.showToast(
                child: errorToast(),
                gravity: ToastGravity.BOTTOM,
                toastDuration: const Duration(seconds: 2),
              );
            } else {
              Navigator.pushNamed(context, '/home');
            }
          });
        },
        style: TextButton.styleFrom(
          backgroundColor: kBlackColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: isLoading
            ? CircularProgressIndicator(
                color: kWhiteColor,
                backgroundColor: kGreyColor,
              )
            : Text(
                'Login',
                style: whiteTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
      ),
    );
  }

  Widget loginWithGoogleButton() {
    return Container(
      height: 56,
      width: double.infinity,
      margin: const EdgeInsets.only(
        top: 21,
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Login with Google',
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }

  Widget registerButton() {
    return Container(
      margin: const EdgeInsets.only(
        top: 48,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don\'t have an account?',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Register',
              style: blueTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget errorToast() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kRedColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        'Invalid password',
        style: whiteTextStyle.copyWith(
          fontSize: 16,
          fontWeight: semiBold,
        ),
      ),
    );
  }
}
