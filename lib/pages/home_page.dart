import 'package:doctor_appointment/widgets/doctor_card.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 64,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello,',
                      style: TextStyle(
                        color: Color(0xFF8696BB),
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Hi James',
                      style: TextStyle(
                        color: Color(0xFF0D1B34),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Image.asset(
                  'assets/images/home/hi.png',
                  height: 56,
                  width: 56,
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 32,
                      ),
                      DoctorCard(
                        mainColor: Color(0xFF4894FE),
                        doctorImg: 'assets/images/doctors/imran.png',
                        doctorName: 'Dr. Imran Syahir',
                        doctorPosition: 'General Doctor',
                        date: 'Sunday, 12 June',
                        time: '11:00 - 12:00 AM',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  style: const TextStyle(
                    color: Color(0xFF8696BB),
                    fontSize: 15,
                  ),
                  decoration: InputDecoration(
                    hintStyle: const TextStyle(
                      color: Color(0xFF8696BB),
                      fontSize: 15,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: const Color(0xFFFAFAFA),
                    prefixIcon: Image.asset(
                      'assets/images/home/search.png',
                      height: 24,
                      width: 24,
                    ),
                    hintText: 'Search doctor or health issue',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 103,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/home/sun.png',
                              height: 72,
                              width: 72,
                            ),
                            const Text(
                              'Covid 19',
                              style: TextStyle(
                                  color: Color(0xFF8696BB), fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/home/profile-add.png',
                              height: 72,
                              width: 72,
                            ),
                            const Text(
                              'Doctor',
                              style: TextStyle(
                                  color: Color(0xFF8696BB), fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/home/link.png',
                              height: 72,
                              width: 72,
                            ),
                            const Text(
                              'Medicine',
                              style: TextStyle(
                                  color: Color(0xFF8696BB), fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/home/hospital.png',
                              height: 72,
                              width: 72,
                            ),
                            const Text(
                              'Hospital',
                              style: TextStyle(
                                  color: Color(0xFF8696BB), fontSize: 15),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Row(
                  children: [
                    Text(
                      'Near Doctor',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF0D1B34),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  height: 148,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/doctors/josseph.png',
                            width: 48,
                            height: 48,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dr. Joseph Brostito',
                                style: TextStyle(
                                  color: Color(0xFF0D1B34),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Text(
                                'Dental Specialist',
                                style: TextStyle(
                                    color: Color(0xFF8696BB), fontSize: 14),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/home/location.png',
                                height: 16,
                                width: 16,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                '1.2 KM',
                                style: TextStyle(
                                    color: Color(0xFF8696BB), fontSize: 14),
                              )
                            ],
                          )
                        ],
                      ),
                      const Divider(
                        color: Color(0xFFF5F5F5),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/home/clock.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    '4,8 (120 Reviews)',
                                    style: TextStyle(
                                      color: Color(0xFFFEB052),
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/home/clock 2.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    'Open at 17.00',
                                    style: TextStyle(
                                      color: Color(0xFF4894FE),
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
