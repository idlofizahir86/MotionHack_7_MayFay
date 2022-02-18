import 'package:flutter/material.dart';
import 'package:mayfay_hackaton/style.dart';
import 'package:mayfay_hackaton/widgets/custom_text_form_field.dart';
import 'package:mayfay_hackaton/widgets/google_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 26),
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Container(
                      color: kGrey1Color,
                      width: 173,
                      height: 138,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Login to your\naccount',
                      style: headingTextStyle.copyWith(
                        fontSize: 20,
                        color: kSecondaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 18),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomTextFromField(
                          title: 'Email',
                          hintText: 'Email Address',
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.emailAddress,
                        ),
                        const CustomTextFromField(
                          title: 'Password',
                          hintText: 'Password',
                          obscureText: true,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                        ),
                        const SizedBox(height: 30),
                        Container(
                          alignment: Alignment.center,
                          height: 56,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            "Login",
                            style: mediumTextStyle.copyWith(
                              fontSize: 18,
                              color: kWhite1Color,
                            ),
                          ),
                        ),
                        const SizedBox(height: 21),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            'OR',
                            style: semiBoldTextStyle.copyWith(
                                fontSize: 16, color: kGrey1Color),
                          ),
                        ),
                        const SizedBox(height: 15),
                        const GoogleButton(
                          title: 'Login with google',
                          jarak: 92,
                        ),
                        const SizedBox(height: 40),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/register');
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "Don’t have an account? Register",
                              style: regulerTextStyle.copyWith(
                                fontSize: 14,
                                color: kBlackColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
