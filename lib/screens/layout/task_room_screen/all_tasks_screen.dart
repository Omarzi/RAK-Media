import 'package:commissions_app/core/color_constant.dart';
import 'package:flutter/material.dart';

class AllTasksScreen extends StatelessWidget {
  const AllTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black54,
          ),
        ),
        title: Text(
          'Returning member of the task list',
          style: TextStyle(
            color: AppColor.primaryColor,
            fontSize: 16,
          ),
        ),
      ),
      body: ListView.separated(
        itemCount: 6,
        separatorBuilder: (context, index) {
          return SizedBox(height: 10);
        },
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              height: 170,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/TikTok.png', width: 50),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tiktok',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '1 USDT',
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(AppColor.primaryColor),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: BorderSide(
                                  width: 3, color: AppColor.primaryColor),
                            ),
                          ),
                        ),
                        child: const Text('Next'),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35),
                    child: Divider(
                      height: 40,
                      color: Colors.grey[300],
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 45),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Demand Side: 7442',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(width: 20),
                                Text('Remaining: 2105'),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Request Follow, Like',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
