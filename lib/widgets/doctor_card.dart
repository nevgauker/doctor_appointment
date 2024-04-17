import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    super.key,
    this.mainColor,
    required this.doctorImg,
    required this.doctorName,
    required this.doctorPosition,
    required this.date,
    required this.time,
    this.alternativeTextColor,
    this.alternativeSubColor,
  });

  final Color? mainColor;
  final String doctorImg;
  final String doctorName;
  final String doctorPosition;
  final String date;
  final String time;
  final Color? alternativeTextColor;
  final Color? alternativeSubColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 138,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: mainColor ?? Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  doctorImg,
                  height: 48,
                  width: 48,
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctorName,
                      style: TextStyle(
                        fontSize: 16,
                        color: alternativeTextColor ?? Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      doctorPosition,
                      style: TextStyle(
                        fontSize: 14,
                        color: alternativeSubColor ?? const Color(0xFFCBE1FF),
                      ),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Divider(
                color: alternativeSubColor?.withOpacity(0.15) ??
                    const Color(0xFFFFFFFF).withOpacity(0.15),
              ),
            ),
            SizedBox(
              height: 14,
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/home/calendar-white.png',
                          height: 16,
                          width: 16,
                          color: alternativeSubColor ?? Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          date,
                          style: TextStyle(
                            fontSize: 12,
                            color: alternativeSubColor ?? Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/home/clock-white.png',
                          height: 16,
                          width: 16,
                          color: alternativeSubColor ?? Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          time,
                          style: TextStyle(
                            fontSize: 12,
                            color: alternativeSubColor ?? Colors.white,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
