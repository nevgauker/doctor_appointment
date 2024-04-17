import 'package:doctor_appointment/widgets/doctor_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 64,
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF63B4FF).withOpacity(0.1),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  width: 226,
                  height: 50,
                  child: const Center(
                    child: Text(
                      'Canceled Schedule',
                      style: TextStyle(color: Color(0xFF4894FE), fontSize: 16),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF63B4FF).withOpacity(0.1),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  width: 226,
                  height: 50,
                  child: const Center(
                    child: Text(
                      'Upcoming schedule',
                      style: TextStyle(color: Color(0xFF4894FE), fontSize: 16),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF63B4FF).withOpacity(0.1),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  width: 226,
                  height: 50,
                  child: const Center(
                    child: Text(
                      'Completed schedule',
                      style: TextStyle(color: Color(0xFF4894FE), fontSize: 16),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  DoctorCard(
                    doctorImg: 'assets/images/doctors/josseph.png',
                    doctorName: 'Dr. Joseph Brostito',
                    doctorPosition: 'Dental Specialist',
                    date: 'Sunday, 12 June',
                    time: '11:00 - 12:00 AM',
                    alternativeTextColor: Colors.black,
                    alternativeSubColor: Color(0xFF8696BB),
                  ),
                  DetailsButton(),
                  DoctorCard(
                    doctorImg: 'assets/images/doctors/bessie.png',
                    doctorName: 'Dr. Bessie Coleman',
                    doctorPosition: 'Dental Specialist',
                    date: 'Sunday, 12 June',
                    time: '11:00 - 12:00 AM',
                    alternativeTextColor: Colors.black,
                    alternativeSubColor: Color(0xFF8696BB),
                  ),
                  DetailsButton(),
                  DoctorCard(
                    doctorImg: 'assets/images/doctors/babe.png',
                    doctorName: 'Dr. Babe Didrikson',
                    doctorPosition: 'Dental Specialist',
                    date: 'Sunday, 12 June',
                    time: '11:00 - 12:00 AM',
                    alternativeTextColor: Colors.black,
                    alternativeSubColor: Color(0xFF8696BB),
                  ),
                  DetailsButton(),
                  DoctorCard(
                    doctorImg: 'assets/images/doctors/josseph.png',
                    doctorName: 'Dr. Joseph Brostito',
                    doctorPosition: 'Dental Specialist',
                    date: 'Sunday, 12 June',
                    time: '11:00 - 12:00 AM',
                    alternativeTextColor: Colors.black,
                    alternativeSubColor: Color(0xFF8696BB),
                  ),
                  DetailsButton(),
                  DoctorCard(
                    doctorImg: 'assets/images/doctors/bessie.png',
                    doctorName: 'Dr. Bessie Coleman',
                    doctorPosition: 'Dental Specialist',
                    date: 'Sunday, 12 June',
                    time: '11:00 - 12:00 AM',
                    alternativeTextColor: Colors.black,
                    alternativeSubColor: Color(0xFF8696BB),
                  ),
                  DetailsButton(),
                  DoctorCard(
                    doctorImg: 'assets/images/doctors/babe.png',
                    doctorName: 'Dr. Babe Didrikson',
                    doctorPosition: 'Dental Specialist',
                    date: 'Sunday, 12 June',
                    time: '11:00 - 12:00 AM',
                    alternativeTextColor: Colors.black,
                    alternativeSubColor: Color(0xFF8696BB),
                  ),
                  DetailsButton()
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class DetailsButton extends StatelessWidget {
  const DetailsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 295,
      height: 39,
      decoration: BoxDecoration(
        color: const Color(0xFF63B4FF).withOpacity(0.1),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'Detail',
          style: TextStyle(
            color: Color(0xFF4894FE),
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
