import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mayfay_hackaton/cubit/auth_cubit.dart';
import 'package:mayfay_hackaton/style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: kRedColor,
              content: Text(state.error),
            ),
          );
        } else if (state is AuthInitial) {
          Navigator.pushNamedAndRemoveUntil(
              context, '/login', (route) => false);
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

        return InkWell(
          child: SizedBox(
            height: 24,
            width: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/icons/icon_logout.svg',
                  width: 24,
                  height: 24,
                ),
                Text(
                  'Logout',
                  style: mediumTextStyle.copyWith(
                    fontSize: 14,
                    color: kRedColor,
                  ),
                ),
              ],
            ),
          ),
          onTap: () {
            context.read<AuthCubit>().signOut();
          },
        );
      },
    );
  }
}
