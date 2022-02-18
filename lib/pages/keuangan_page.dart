import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mayfay_hackaton/style.dart';
import 'package:mayfay_hackaton/widgets/riwayat_list.dart';

class KeuanganPage extends StatelessWidget {
  const KeuanganPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          highlightElevation: 50,
          hoverElevation: 50,
          backgroundColor: kPrimaryColor,
          child: Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.add,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/keuangan_add');
          }),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 215,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/background.png',
                    width: MediaQuery.of(context).size.width,
                    height: 180,
                  ),
                  Column(
                    children: [
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 16),
                        alignment: Alignment.bottomCenter,
                        height: 70,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        decoration: BoxDecoration(
                          color: kWhite1Color,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 30,
                              color: Color.fromRGBO(0, 0, 0, 0.05),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Pendapatan',
                                  style: regulerTextStyle.copyWith(
                                    fontSize: 10,
                                    color: kSecondaryColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Rp. 6.000.0000',
                                  style: semiBoldTextStyle.copyWith(
                                    fontSize: 12,
                                    color: kPrimaryColor,
                                    letterSpacing: 0.2,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 2,
                              height: double.infinity,
                              color: kGrey5Color,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Pengeluaran',
                                  style: regulerTextStyle.copyWith(
                                    fontSize: 10,
                                    color: kSecondaryColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Rp. 1.200.000',
                                  style: semiBoldTextStyle.copyWith(
                                    fontSize: 12,
                                    color: kRedColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
                    width: 275,
                    height: 36,
                    decoration: BoxDecoration(
                        color: kWhite1Color,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: kGrey4Color)),
                    child: Stack(
                      children: [
                        TextFormField(
                          cursorColor: kBlackColor,
                          decoration: InputDecoration(
                            hintText: 'Cari Riwayat',
                            hintStyle: mediumTextStyle.copyWith(
                              fontSize: 14,
                              color: kGrey4Color,
                            ),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: SvgPicture.asset(
                              'assets/icons/icon_search.svg',
                              width: 24,
                            )),
                      ],
                    ),
                  ),
                  Container(
                    height: 36,
                    width: 36,
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: kWhite1Color,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: kGrey5Color,
                        )),
                    child: SvgPicture.asset(
                      'assets/icons/icon_filter.svg',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 24),
                  child: Text(
                    'Riwayat',
                    style: headingTextStyle.copyWith(
                      fontSize: 16,
                      color: kBlackColor,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                RiwayatList(
                  judul: 'Gaji Bulanan',
                  keterangan: 'Gaji bulan Agustus',
                  tanggal: '17 Feb 2022',
                  nominal: 6000000,
                  pemasukkan: true,
                ),
                RiwayatList(
                  judul: 'Beli Monitor',
                  keterangan: 'Gaji bulan Agustus',
                  tanggal: '17 Feb 2022',
                  nominal: 1200000,
                  pemasukkan: false,
                ),
                RiwayatList(
                  judul: 'Kos Bulanan',
                  keterangan: 'Gaji bulan Agustus',
                  tanggal: '01 Feb 2022',
                  nominal: 2000000,
                  pemasukkan: false,
                ),
                RiwayatList(
                  judul: 'Upah Lembur',
                  keterangan: 'Gaji bulan Agustus',
                  tanggal: '07 Jan 2022',
                  nominal: 2000000,
                  pemasukkan: true,
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
