import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mayfay_hackaton/cubit/keuangan_cubit.dart';
import 'package:mayfay_hackaton/model/keuangan_model.dart';
import 'package:mayfay_hackaton/style.dart';
import 'package:mayfay_hackaton/widgets/riwayat_list.dart';
import 'package:mayfay_hackaton/widgets/test.dart';

class KeuanganPage extends StatefulWidget {
  const KeuanganPage({Key? key}) : super(key: key);

  @override
  State<KeuanganPage> createState() => _KeuanganPageState();
}

class _KeuanganPageState extends State<KeuanganPage> {
  @override
  void initState() {
    context.read<KeuanganCubit>().fetchKeuangan();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget riwayatUang(List<KeuanganModel> keuangan) {
      return Column(
          children: keuangan.map((KeuanganModel keuangan) {
        return RiwayatList(keuangan);
      }).toList());
    }

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 215,
                child: Stack(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          child: Image.asset(
                            'assets/images/background.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 370,
                          height: 60,
                          child: Column(
                            children: [
                              Text(
                                'Sisa Uang Kamu',
                                style: semiBoldTextStyle.copyWith(
                                  fontSize: 14,
                                  color: kWhite1Color,
                                ),
                              ),
                              Text(
                                'Rp. 4.800.000',
                                style: headingTextStyle.copyWith(
                                  fontSize: 24,
                                  color: kWhite1Color,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 7),
                      width: 275,
                      height: 36,
                      decoration: BoxDecoration(
                          color: kWhite1Color,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: kGrey4Color)),
                      child: Stack(
                        children: [
                          TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
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
                    const Filter(),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              BlocConsumer<KeuanganCubit, KeuanganState>(
                listener: (context, state) {
                  if (state is KeuanganFailed) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: kRedColor,
                        content: Text(state.error)));
                  }
                },
                builder: (context, state) {
                  if (state is KeuanganSuccess) {
                    return Column(
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
                        const SizedBox(
                          height: 30,
                        ),
                        riwayatUang(state.keuangan),
                      ],
                    );
                  }
                  return Center(
                      child: SpinKitThreeInOut(
                    color: kPrimaryColor,
                    size: 20,
                  ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
