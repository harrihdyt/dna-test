// ignore_for_file: deprecated_member_use

import 'package:floating_bottom_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mycaliana_app/app/modules/home/views/register_view.dart';
import 'package:mycaliana_app/app/utils/theme.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Widget search() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 50,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: kGreyColor),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(hintText: 'Cari'),
              ),
            ),
          ],
        ),
      );
    }

    Widget bottomNav() {
      return AnimatedBottomNavigationBar(
        barColor: Colors.white,
        controller: FloatingBottomBarController(initialIndex: 1),
        bottomBar: [
          BottomBarItem(
            icon: const Icon(Icons.home),
            iconSelected: const Icon(Icons.home),
            title: "Home",
            dotColor: kPrimryColor,
            onTap: (value) {},
          ),

          BottomBarItem(
            icon: const Icon(Icons.person),
            iconSelected: const Icon(Icons.person),
            title: "Profile",
            dotColor: kPrimryColor,
            onTap: (value) {},
          ),
        ],
        bottomBarCenterModel: BottomBarCenterModel(
          centerBackgroundColor: kWhiteColor,
          centerIcon: FloatingCenterButton(
            child: Icon(Icons.add, color: kGreyColor),
          ),
          centerIconChild: [
            FloatingCenterButtonChild(
              child: Icon(Icons.person_pin_sharp, color: kGreyColor),
              onTap: () => {Get.to(RegisterView())},
            ),
            FloatingCenterButtonChild(
              child: Icon(Icons.person_pin_sharp, color: kGreyColor),
              onTap: () => {Get.to(RegisterView())},
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      bottomNavigationBar: bottomNav(),
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: Row(
          children: [
            Image.asset('assets/images/mycalina.png', width: 50),
            Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Row(
                children: [
                  Text("Operato...", style: TextStyle(color: kLightGreyColor)),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kWhiteColor,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.notifications_none_rounded,
                        color: kGreyColor,
                        size: 32,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 20),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Icon(
                  Icons.notifications_none_rounded,
                  color: kGreyColor,
                  size: 32,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            search(),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fitur",
                    style: TextStyle(
                      color: kBlackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            controller.selectIndex(0);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color:
                                  controller.currentInde.value == 0
                                      ? kPrimryColor.withOpacity(0.3)
                                      : kWhiteColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "Semua Fitur",
                                style: TextStyle(
                                  color:
                                      controller.currentInde.value == 0
                                          ? kPrimryColor
                                          : kLightGreyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            controller.selectIndex(1);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color:
                                  controller.currentInde.value == 1
                                      ? kPrimryColor.withOpacity(0.3)
                                      : kWhiteColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "Visitor Management System",
                                style: TextStyle(
                                  color:
                                      controller.currentInde.value == 1
                                          ? kPrimryColor
                                          : kLightGreyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.bar_chart_outlined, color: kGreyColor),
                          const SizedBox(height: 5),
                          Text(
                            "Dashboard",
                            style: TextStyle(color: kGreyColor),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.person_pin_sharp, color: kGreyColor),
                          const SizedBox(height: 5),
                          Text(
                            "Daftar\nPengunjung",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: kGreyColor),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.house, color: kGreyColor),
                          const SizedBox(height: 5),
                          Text(
                            "Residance",
                            style: TextStyle(color: kGreyColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hari Ini",
                    style: TextStyle(
                      color: kBlackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Text(
                      "Belum ada pengunjung Baru",
                      style: TextStyle(
                        color: kGreyColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      "Pengunjung yang menunggu akan ditampilkan disini",
                      style: TextStyle(color: kGreyColor),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Container(
                      width: 100,
                      height: 50,
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        border: Border.all(color: kPrimryColor),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Refresh",
                          style: TextStyle(
                            color: kPrimryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
