import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class ProfilePage extends StatefulWidget {
  final String role;
  const ProfilePage({
    super.key,
    required this.role,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class RowText extends StatelessWidget {
  final Widget icon;
  final String label;
  final String value;
  final Color valueColor;
  final VoidCallback onTap;

  const RowText({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    required this.valueColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              icon,
              const SizedBox(width: 10.0),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              color: valueColor,
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 16.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      // ignore: deprecated_member_use
                      color: Colors.black.withOpacity(0.25),
                      offset: const Offset(0, 3),
                      spreadRadius: 0,
                      blurRadius: 4.0,
                      blurStyle: BlurStyle.outer,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 22.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50.0)),
                          child: Image.asset(
                            'assets/images/profile.jpg',
                            width: 72.0,
                            height: 72.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 11.0, vertical: 2.0),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(16.0)),
                                border: Border.all(color: Colors.blue),
                              ),
                              child: Text(
                                widget.role,
                                style: const TextStyle(
                                  color: Colors.blue,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const Text(
                              "RIFKI HAFIDL ALAUDDIN",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.blue,
                              ),
                            ),
                            const Text(
                              "Senin, 29 November 2004",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    Dash(
                      length: MediaQuery.of(context).size.width - 60.0,
                      dashColor: const Color(0xffD5DFE7),
                    ),
                    const SizedBox(height: 16.0),
                  ],
                ),
              ),
              const SizedBox(height: 24.0),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 14.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      // ignore: deprecated_member_use
                      color: Colors.black.withOpacity(0.25),
                      offset: const Offset(0, 3),
                      spreadRadius: 0,
                      blurRadius: 4.0,
                      blurStyle: BlurStyle.outer,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RowText(
                      icon: const Icon(Icons.notifications),
                      label: 'Notifikasi',
                      value: 'ON',
                      valueColor: Colors.blue,
                      onTap: () {},
                    ),
                    const SizedBox(height: 12.0),
                    RowText(
                      icon: const Icon(Icons.translate),
                      label: 'Bahasa',
                      value: 'Indonesia',
                      valueColor: Colors.blue,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24.0),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 14.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      // ignore: deprecated_member_use
                      color: Colors.black.withOpacity(0.25),
                      offset: const Offset(0, 3),
                      spreadRadius: 0,
                      blurRadius: 4.0,
                      blurStyle: BlurStyle.outer,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RowText(
                      icon: const Icon(Icons.security),
                      label: 'Keamanan',
                      value: '',
                      valueColor: Colors.blue,
                      onTap: () {},
                    ),
                    const SizedBox(height: 12.0),
                    RowText(
                      icon: const Icon(Icons.sunny),
                      label: 'Tema',
                      value: 'Mode Terang',
                      valueColor: Colors.blue,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24.0),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 14.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      // ignore: deprecated_member_use
                      color: Colors.black.withOpacity(0.25),
                      offset: const Offset(0, 3),
                      spreadRadius: 0,
                      blurRadius: 4.0,
                      blurStyle: BlurStyle.outer,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RowText(
                      icon: const Icon(Icons.help),
                      label: 'Help & Support',
                      value: '',
                      valueColor: Colors.blue,
                      onTap: () {},
                    ),
                    const SizedBox(height: 12.0),
                    RowText(
                      icon: const Icon(Icons.contact_mail),
                      label: 'Contact us',
                      value: '',
                      valueColor: Colors.blue,
                      onTap: () {},
                    ),
                    const SizedBox(height: 12.0),
                    RowText(
                      icon: const Icon(Icons.privacy_tip),
                      label: 'Privacy policy',
                      value: '',
                      valueColor: Colors.blue,
                      onTap: () {},
                    ),
                    const SizedBox(height: 12.0),
                    RowText(
                      icon: const Icon(Icons.logout),
                      label: 'Logout',
                      value: '',
                      valueColor: Colors.blue,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
