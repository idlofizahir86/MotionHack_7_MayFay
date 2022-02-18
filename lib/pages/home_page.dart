import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mayfay_hackaton/style.dart';
import 'package:mayfay_hackaton/widgets/to_do_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite1Color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 37,
              ),
              height: 200,
              color: kGrey1Color,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hi, Andrea',
                        style: headingTextStyle.copyWith(
                          fontSize: 18,
                          color: kBlackColor,
                        ),
                      ),
                      SizedBox(
                        width: 36,
                        height: 36,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: kWhite1Color,
                        ),
                      ),
                    ],
                  )
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
                      Text(
                        'See All',
                        style: regulerTextStyle.copyWith(
                          fontSize: 14,
                          color: kGrey3Color,
                        ),
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
                          child: Column(
                            children: [
                              Text(
                                'Bulan ini',
                                style: regulerTextStyle.copyWith(
                                    fontSize: 12, color: kGrey3Color),
                              )
                            ],
                          ),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          Text(
                            'See All',
                            style: regulerTextStyle.copyWith(
                              fontSize: 14,
                              color: kGrey3Color,
                            ),
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
    );
  }
}
