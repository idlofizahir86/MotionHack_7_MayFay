import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mayfay_hackaton/cubit/auth_cubit.dart';
import 'package:mayfay_hackaton/style.dart';
import 'package:mayfay_hackaton/widgets/custom_text_form_field.dart';
import 'package:mayfay_hackaton/widgets/google_button.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController(text: '');
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');
  final TextEditingController noHandphoneController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: kWhite1Color,
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
                      width: 173,
                      height: 138,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/mayfay_logo.png'),
                        fit: BoxFit.cover,
                      )),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Register to your\naccount',
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
                        CustomTextFromField(
                          title: 'Fullname',
                          hintText: 'Fullname',
                          textInputAction: TextInputAction.next,
                          controller: nameController,
                        ),
                        CustomTextFromField(
                          title: 'Email',
                          hintText: 'Email Address',
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.emailAddress,
                          controller: emailController,
                        ),
                        CustomTextFromField(
                          title: 'Password',
                          hintText: 'Password',
                          obscureText: true,
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.visiblePassword,
                          controller: passwordController,
                        ),
                        CustomTextFromField(
                          title: 'No. Handphone',
                          hintText: 'Nomor Handphone',
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.number,
                          controller: noHandphoneController,
                        ),
                        const SizedBox(height: 30),
                        BlocConsumer<AuthCubit, AuthState>(
                          listener: (context, state) {
                            if (state is AuthSuccess) {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, '/navbar', (route) => false);
                            } else if (state is AuthFailed) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      backgroundColor: kRedColor,
                                      content: Text(state.error)));
                            }
                          },
                          builder: (context, state) {
                            if (state is AuthLoading) {
                              return Center(
                                  child: SpinKitThreeInOut(
                                color: kPrimaryColor,
                                size: 20,
                              ));
                            }

                            return GestureDetector(
                              child: Container(
                                alignment: Alignment.center,
                                height: 56,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Text(
                                  "Register",
                                  style: mediumTextStyle.copyWith(
                                    fontSize: 18,
                                    color: kWhite1Color,
                                  ),
                                ),
                              ),
                              onTap: () {
                                context.read<AuthCubit>().signUp(
                                      email: emailController.text,
                                      password: passwordController.text,
                                      name: nameController.text,
                                      noHandphone: noHandphoneController.text,
                                    );
                              },
                            );
                          },
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
                          title: 'Register with google',
                          jarak: 89,
                        ),
                        const SizedBox(height: 40),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account? ",
                                style: regulerTextStyle.copyWith(
                                  fontSize: 14,
                                  color: kBlackColor,
                                ),
                              ),
                              Text(
                                "Login",
                                style: semiBoldTextStyle.copyWith(
                                  fontSize: 14,
                                  color: kPrimaryColor,
                                ),
                              ),
                            ],
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
