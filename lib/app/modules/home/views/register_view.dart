// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mycaliana_app/app/utils/theme.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerI = TextEditingController();

    Widget field({
      required String title,
      required TextEditingController controller,
    }) {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: TextStyle(color: kGreyColor)),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: kGreyColor),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: controller,
                decoration: InputDecoration.collapsed(hintText: "ketik disini"),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Formulir Registrasi"),
      ),
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          Center(
            child: Text(
              "Data Pribadi",
              style: TextStyle(
                color: kBlackColor,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 30),
          field(title: "Nomor Kartu Identitas", controller: controllerI),
          field(title: "Nomor Kartu Keluarga", controller: controllerI),
          field(title: "Nama", controller: controllerI),
          field(title: "Email", controller: controllerI),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color:
                  controllerI.text.isEmpty
                      ? kLightGreyColor.withOpacity(0.3)
                      : kPrimryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(child: Text("Selanjutnya", style: TextStyle())),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: kPrimryColor),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text("Batal", style: TextStyle(color: kPrimryColor)),
            ),
          ),
        ],
      ),
    );
  }
}
