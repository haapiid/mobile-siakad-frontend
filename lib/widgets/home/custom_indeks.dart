import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomIndeks extends StatelessWidget {
  final controller = Get.put(Controller());

  CustomIndeks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15)),
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Indeks Prestasi ",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    const Text("Semester 5  ",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        )),
                    Row(
                      children: [
                        Obx(
                          () => controller.isIPK == false
                              ? const Text("3.51",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))
                              : const Text(
                                  "*,**",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                        ),
                        Obx(
                          () => IconButton(
                              onPressed: () {
                                controller.isIPK.value =
                                    !controller.isIPK.value;
                              },
                              icon: controller.isIPK.value == true
                                  ? const Icon(
                                      Icons.remove_red_eye_sharp,
                                      color: Colors.white,
                                      size: 20,
                                    )
                                  : const Icon(
                                      Icons.remove_red_eye_sharp,
                                      color: Colors.white,
                                      size: 20,
                                    )),
                        )
                      ],
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Seluruh Semester >",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications_none,
                            color: Colors.blue,
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Notifikasi",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        )),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.qr_code_2,
                            color: Colors.blue,
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Scan QR",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: 8,
            itemBuilder: (context, index) {
              List<Map<String, dynamic>> menuItems = [
                {'icon': Icons.calendar_month, 'title': 'Kalender'},
                {'icon': Icons.email, 'title': 'Pesan'},
                {'icon': Icons.book_rounded, 'title': 'Repositori'},
                {'icon': Icons.shield, 'title': 'Presensi'},
                {'icon': Icons.account_balance_wallet, 'title': 'UKT'},
                {'icon': Icons.file_copy, 'title': 'Catatan'},
                {'icon': Icons.show_chart_rounded, 'title': 'Transkrip'},
                {'icon': Icons.more_horiz, 'title': 'Lainnya'},
              ];

              return Column(
                children: [
                  menuCenter(
                    Icon(menuItems[index]['icon'], size: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    menuItems[index]['title'],
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  Widget menuCenter(Icon icon) {
    return Container(
      width: 50,
      height: 50,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: icon),
    );
  }
}

class Controller extends GetxController {
  var isIPK = false.obs;
  var imageUser = 'assets/images/profile.jpg';
}