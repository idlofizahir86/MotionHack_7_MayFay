import 'package:flutter/material.dart';
import 'package:mayfay_hackaton/style.dart';
import 'package:mayfay_hackaton/widgets/to_do_list.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

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
            Navigator.pushNamed(context, '/todolist_add');
          }),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(24),
                height: 90,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Todo List',
                    style: semiBoldTextStyle.copyWith(
                      fontSize: 16,
                      color: kBlackColor,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
                child: Text(
                  'Hari Ini',
                  style: semiBoldTextStyle.copyWith(
                    fontSize: 16,
                    color: kBlackColor,
                  ),
                ),
              ),
              Column(
                children: const [
                  ToDoList(
                    judul: 'Membeli Laptop',
                    keterangan: 'Asas Vivibook 376',
                    hari: 'Minggu',
                    waktu: '09.00 AM',
                    tanggal: '20-02-2022',
                  ),
                  ToDoList(
                    judul: 'Membeli Laptop',
                    keterangan: 'Asas Vivibook 376',
                    hari: 'Minggu',
                    waktu: '09.00 AM',
                    tanggal: '20-02-2022',
                  ),
                  ToDoList(
                    judul: 'Membeli Laptop',
                    keterangan: 'Asas Vivibook 376',
                    hari: 'Minggu',
                    waktu: '09.00 AM',
                    tanggal: '20-02-2022',
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
                child: Text(
                  'Besok',
                  style: semiBoldTextStyle.copyWith(
                    fontSize: 16,
                    color: kBlackColor,
                  ),
                ),
              ),
              Column(
                children: const [
                  ToDoList(
                    judul: 'Membeli Laptop',
                    keterangan: 'Asas Vivibook 376',
                    hari: 'Minggu',
                    waktu: '09.00 AM',
                    tanggal: '20-02-2022',
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
                child: Text(
                  'Selesai Hari Ini',
                  style: semiBoldTextStyle.copyWith(
                    fontSize: 16,
                    color: kBlackColor,
                  ),
                ),
              ),
              Column(
                children: const [
                  ToDoList(
                    judul: 'Membeli Laptop',
                    keterangan: 'Asas Vivibook 376',
                    hari: 'Minggu',
                    waktu: '09.00 AM',
                    tanggal: '20-02-2022',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
