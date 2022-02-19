import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mayfay_hackaton/cubit/auth_cubit.dart';
import 'package:mayfay_hackaton/style.dart';
import 'package:mayfay_hackaton/widgets/logout_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  _NewsDetailState createState() => _NewsDetailState();
}

class _NewsDetailState extends State<ProfilePage> {
  bool dragValue = false;
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is AuthSuccess) {
          return Scaffold(
            backgroundColor: kWhite1Color,
            body: SafeArea(
                child: Stack(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/background_profile.png',
                      height: 310,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 166,
                      width: 116,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 116,
                            height: 116,
                            decoration: BoxDecoration(
                              color: kWhite1Color,
                              borderRadius: BorderRadius.circular(80),
                            ),
                            child: SvgPicture.asset(
                                'assets/icons/icon_profile.svg'),
                          ),
                          const SizedBox(height: 9),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              state.user.name,
                              style: semiBoldTextStyle.copyWith(
                                fontSize: 24,
                                color: kWhite1Color,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onPanDown: (value) {
                    isVisible = !isVisible;
                    setState(() {});
                  },
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 288,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(15),
                          ),
                          color: kWhite1Color,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 32),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Profile',
                                    style: headingTextStyle.copyWith(
                                      fontSize: 20,
                                      color: kBlackColor,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  ProfileInfo(
                                    title: 'Fullname',
                                    text: state.user.name,
                                  ),
                                  ProfileInfo(
                                    title: 'Email',
                                    text: state.user.email,
                                  ),
                                  ProfileInfo(
                                    title: 'Status',
                                    text: state.user.status,
                                  ),
                                  ProfileInfo(
                                    title: 'No. Handphone',
                                    text: state.user.noHandphone,
                                  ),
                                  const SizedBox(height: 16),
                                  const Align(
                                      alignment: Alignment.center,
                                      child: LogoutButton()),
                                  const SizedBox(height: 60),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30,
                    horizontal: 24,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Visibility(
                      visible: isVisible,
                      child: SvgPicture.asset(
                        'assets/icons/icon_arrow_back_circle_2.svg',
                        width: 44,
                      ),
                    ),
                  ),
                ),
              ],
            )),
          );
        } else {}
        return Scaffold(
          backgroundColor: kWhite1Color,
          body: SafeArea(
              child: Stack(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/images/background_profile.png',
                    height: 310,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: kPrimaryColor,
                    width: 116,
                    height: 116,
                  ),
                ],
              ),
              GestureDetector(
                onPanDown: (value) {
                  isVisible = !isVisible;
                  setState(() {});
                },
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 288,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(15),
                        ),
                        color: kWhite1Color,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 32),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Profile',
                                  style: headingTextStyle.copyWith(
                                    fontSize: 20,
                                    color: kBlackColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                const ProfileInfo(
                                  title: 'Fullname',
                                  text: '',
                                ),
                                const ProfileInfo(
                                  title: 'Email',
                                  text: '',
                                ),
                                const ProfileInfo(
                                  title: 'Status',
                                  text: '',
                                ),
                                const ProfileInfo(
                                  title: 'No. Handphone',
                                  text: '',
                                ),
                                const SizedBox(height: 16),
                                const Align(
                                    alignment: Alignment.center,
                                    child: LogoutButton()),
                                const SizedBox(height: 60),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 24,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Visibility(
                    visible: isVisible,
                    child: SvgPicture.asset(
                      'assets/icons/icon_arrow_back_circle_2.svg',
                      width: 44,
                    ),
                  ),
                ),
              ),
            ],
          )),
        );
      },
    );
  }
}

class ProfileInfo extends StatelessWidget {
  final String title;
  final String text;
  const ProfileInfo({
    Key? key,
    this.title = '',
    this.text = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 69,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: mediumTextStyle.copyWith(
              fontSize: 14,
              color: kBlackColor,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(
              horizontal: 21,
              vertical: 9,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: kGrey5Color),
            ),
            child: Text(
              text,
              style: mediumTextStyle.copyWith(
                fontSize: 14,
                color: kGrey4Color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
