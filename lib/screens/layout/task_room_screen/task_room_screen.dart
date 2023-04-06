import 'package:commissions_app/core/color_constant.dart';
import 'package:commissions_app/screens/layout/task_room_screen/all_tasks_screen.dart';
import 'package:flutter/material.dart';

class TaskRoomScreen extends StatelessWidget {
  const TaskRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Task Room',
            style: TextStyle(color: AppColor.primaryColor, fontSize: 18),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.green[300],
                ),
                child: const TabBar(
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(text: 'Facebook'),
                    Tab(text: 'Youtube'),
                    Tab(text: 'Tiktok'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Current Situation',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 10),
                        CircleAvatar(
                          radius: 2.2,
                          backgroundColor: Colors.green,
                        )
                      ],
                    ),
                    const SizedBox(height: 25),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AllTasksScreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: 150,
                        width: 165,
                        decoration: BoxDecoration(
                          // color: Colors.grey,
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(colors: [
                            Colors.grey[200]!,
                            Colors.grey[300]!,
                            Colors.grey[200]!,
                          ]),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 22),
                            const Text(
                              'Regular member',
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 14),
                            const Text(
                              'Profits 1 * 3',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 14),
                            Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Center(
                                child: Text(
                                  'Do the job',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: const [
                        Text(
                          'Another VIP',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 10),
                        CircleAvatar(
                          radius: 2.2,
                          backgroundColor: Colors.green,
                        )
                      ],
                    ),
                    const SizedBox(height: 25),
                    GridView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                      ),
                      children: [
                        Container(
                          height: 150,
                          width: 165,
                          decoration: BoxDecoration(
                            // color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(colors: [
                              Colors.orangeAccent[100]!,
                              Colors.orange[200]!,
                              Colors.orangeAccent[100]!,
                            ]),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(height: 22),
                              const Text(
                                'VPI 1',
                                style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 14),
                              const Text(
                                'Profits 1 * 3',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 14),
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Promotion',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 150,
                          width: 165,
                          decoration: BoxDecoration(
                            // color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(colors: [
                              Colors.blueGrey[200]!,
                              Colors.blue[300]!,
                              Colors.blueGrey[200]!,
                            ]),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(height: 22),
                              const Text(
                                'VPI 2',
                                style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 14),
                              const Text(
                                'Profits 1 * 3',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 14),
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Promotion',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 150,
                          width: 165,
                          decoration: BoxDecoration(
                            // color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(colors: [
                              Colors.green[200]!,
                              Colors.green[100]!,
                              Colors.green[200]!,
                            ]),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(height: 22),
                              const Text(
                                'VPI 3',
                                style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 14),
                              const Text(
                                'Profits 1 * 3',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 14),
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Promotion',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 150,
                          width: 165,
                          decoration: BoxDecoration(
                            // color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(colors: [
                              Colors.red[200]!,
                              Colors.red[300]!,
                              Colors.red[200]!,
                            ]),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(height: 22),
                              const Text(
                                'VPI 4',
                                style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 14),
                              const Text(
                                'Profits 1 * 3',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 14),
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Promotion',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
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
