import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mayfay_hackaton/cubit/auth_cubit.dart';
import 'package:mayfay_hackaton/services/piechart.dart';
import 'package:mayfay_hackaton/style.dart';
import 'package:mayfay_hackaton/widgets/bottom_navbar.dart';
import 'package:mayfay_hackaton/widgets/to_do_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite1Color,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 37,
                ),
                height: 200,
                decoration: BoxDecoration(
                  color: kGrey1Color,
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/background_home.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                            child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: kWhite1Color,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: SvgPicture.asset(
                                    'assets/icons/icon_profile.svg')),
                            onTap: () {
                              Navigator.pushNamed(context, '/profile');
                            }),
                        const SizedBox(width: 19),
                        BlocBuilder<AuthCubit, AuthState>(
                            builder: (context, state) {
                          if (state is AuthSuccess) {
                            return Text(
                              'Hi, ${state.user.name}',
                              style: mediumTextStyle.copyWith(
                                fontSize: 14,
                                color: kWhite1Color,
                              ),
                              overflow: TextOverflow.ellipsis,
                            );
                          } else {
                            return const SizedBox();
                          }
                        }),
                      ],
                    ),
                    const SizedBox(height: 17),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: Text(
                        'Cara Sederhana Untuk Mengelola Uang Anda',
                        style: headingTextStyle.copyWith(
                          fontSize: 14,
                          color: kWhite1Color,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Catatan Keuangan',
                          style: headingTextStyle.copyWith(
                            fontSize: 14,
                            color: kBlackColor,
                          ),
                        ),
                        InkWell(
                          child: Text(
                            'See All',
                            style: regulerTextStyle.copyWith(
                              fontSize: 14,
                              color: kPrimaryColor,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NavBar(
                                          currentIndex: 2,
                                        )));
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 10),
                      width: double.infinity,
                      height: 148,
                      decoration: BoxDecoration(
                        color: kWhite1Color,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 50,
                            color: Color.fromRGBO(0, 0, 0, 0.08),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: const FittedBox(
                                fit: BoxFit.cover,
                                child: SizedBox(
                                    width: 100,
                                    height: 100,
                                    child: PieChartok())),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bulan ini',
                                style: mediumTextStyle.copyWith(
                                  fontSize: 12,
                                  color: kBlackColor,
                                ),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        width: 14,
                                        height: 14,
                                        child: SvgPicture.asset(
                                          'assets/icons/icon_arrow_up.svg',
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 9,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Total Pemasukkan',
                                        style: regulerTextStyle.copyWith(
                                            fontSize: 12, color: kGrey3Color),
                                      ),
                                      const SizedBox(
                                        height: 1,
                                      ),
                                      Text(
                                        'Rp6.000.000',
                                        style: semiBoldTextStyle.copyWith(
                                            fontSize: 12, color: kPrimaryColor),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        width: 14,
                                        height: 14,
                                        child: SvgPicture.asset(
                                          'assets/icons/icon_arrow_down.svg',
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 9,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Total Pengeluaran',
                                        style: regulerTextStyle.copyWith(
                                            fontSize: 12, color: kGrey3Color),
                                      ),
                                      const SizedBox(
                                        height: 1,
                                      ),
                                      Text(
                                        'Rp1.200.000',
                                        style: semiBoldTextStyle.copyWith(
                                            fontSize: 12, color: kRedColor),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Todo List',
                            style: headingTextStyle.copyWith(
                              fontSize: 14,
                              color: kBlackColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Hari ini',
                              style: regulerTextStyle.copyWith(
                                fontSize: 14,
                                color: kGrey3Color,
                              ),
                            ),
                            InkWell(
                              child: Text(
                                'See All',
                                style: regulerTextStyle.copyWith(
                                  fontSize: 14,
                                  color: kPrimaryColor,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => NavBar(
                                              currentIndex: 1,
                                            )));
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const ToDoList(
                judul: 'Membeli Laptop',
                keterangan: 'Asas Vivibook 376',
                hari: 'Minggu',
                waktu: '09.00 AM',
                tanggal: '20-02-2022',
              ),
              const ToDoList(
                judul: 'Membeli Laptop',
                keterangan: 'Asas Vivibook 376',
                hari: 'Minggu',
                waktu: '09.00 AM',
                tanggal: '20-02-2022',
              ),
              const ToDoList(
                judul: 'Membeli Laptop',
                keterangan: 'Asas Vivibook 376',
                hari: 'Minggu',
                waktu: '09.00 AM',
                tanggal: '20-02-2022',
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
