import 'package:doctor_appointment/pages/empty_page.dart';
import 'package:doctor_appointment/pages/schedule_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor Appointment',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4894FE)),
        useMaterial3: true,
      ),
      home: MainTabBar(),
    );
  }
}

class MainTabBar extends StatefulWidget {
  const MainTabBar({
    super.key,
  });

  @override
  State<MainTabBar> createState() => _MainTabBarState();
}

class _MainTabBarState extends State<MainTabBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: SafeArea(
          top: false,
          child: Scaffold(
            backgroundColor: Colors.white,
            bottomNavigationBar: TabBar(
              onTap: _onItemTapped,
              tabs: [
                Tab(
                  icon: _selectedIndex == 0
                      ? Row(
                          children: [
                            Image.asset(
                              'assets/images/tabs/home-selected.png',
                              height: 24,
                              width: 24,
                            ),
                            const Flexible(
                              child: Text(
                                'Home',
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  color: Color(0xFF63B4FF),
                                  fontSize: 10,
                                ),
                              ),
                            )
                          ],
                        )
                      : Image.asset(
                          'assets/images/tabs/home.png',
                          height: 24,
                          width: 24,
                        ),
                ),
                Tab(
                  icon: _selectedIndex == 1
                      ? Row(
                          children: [
                            Image.asset(
                              "assets/images/tabs/calendar-2-selected.png",
                              height: 24,
                              width: 24,
                            ),
                            const Flexible(
                              child: Text(
                                'Calender',
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  color: Color(0xFF63B4FF),
                                  fontSize: 10,
                                ),
                              ),
                            )
                          ],
                        )
                      : Image.asset(
                          "assets/images/tabs/calendar-2.png",
                          height: 24,
                          width: 24,
                        ),
                ),
                Tab(
                  icon: _selectedIndex == 2
                      ? Row(
                          children: [
                            Image.asset(
                              "assets/images/tabs/message.png",
                              height: 24,
                              width: 24,
                            ),
                            const Flexible(
                              child: Text(
                                'Messages',
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  color: Color(0xFF63B4FF),
                                  fontSize: 10,
                                ),
                              ),
                            )
                          ],
                        )
                      : Image.asset(
                          "assets/images/tabs/message.png",
                          height: 24,
                          width: 24,
                        ),
                ),
                Tab(
                    icon: _selectedIndex == 3
                        ? Row(
                            children: [
                              Image.asset(
                                "assets/images/tabs/profile.png",
                                height: 24,
                                width: 24,
                              ),
                              const Flexible(
                                child: Text(
                                  'Profile',
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    color: Color(0xFF63B4FF),
                                    fontSize: 10,
                                  ),
                                ),
                              )
                            ],
                          )
                        : Image.asset(
                            "assets/images/tabs/profile.png",
                            height: 24,
                            width: 24,
                          )),
              ],
            ),
            body: TabBarView(
              children: [
                MyHomePage(),
                const SchedulePage(),
                const EmptyPage(),
                const EmptyPage(),
              ],
            ),
          ),
        ));
  }
}
