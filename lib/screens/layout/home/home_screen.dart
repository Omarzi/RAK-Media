import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:commissions_app/core/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.asset('assets/images/logo-app-inside.png'),
        title: Text(
          'Changing the social of life',
          style: TextStyle(color: AppColor.primaryColor, fontSize: 15),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.message_outlined,
              color: Colors.black54,
              size: 20,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.grey[200],
                height: 245,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/Facebook_ads.avif'),
                    Row(
                      children: [
                        Icon(Icons.volume_up, color: AppColor.primaryColor),
                        const SizedBox(width: 10),
                        DefaultTextStyle(
                          style: const TextStyle(color: Colors.black54, fontSize: 13),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              RotateAnimatedText('Member Upgrade 3023 *** Congratulations VIP5'),
                              RotateAnimatedText('Member Upgrade 3023 *** Congratulations VIP5'),
                              RotateAnimatedText('Member Upgrade 3023 *** Congratulations VIP5'),
                            ],
                            onTap: () {
                              print("Tap Event");
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const SizedBox(width: 10),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        padding: const EdgeInsets.only(top: 3),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.orange.withOpacity(0.8),
                              Colors.orangeAccent.withOpacity(0.8),
                              Colors.orange.withOpacity(0.8),
                              Colors.orangeAccent.withOpacity(0.8)
                            ],
                          ),
                          borderRadius: BorderRadius.circular(150),
                        ),
                        child: Image.asset(
                          'assets/images/recharge.png',
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'Recharge',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14.5,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 30),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        padding: const EdgeInsets.only(left: 3),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.blue.withOpacity(0.8),
                              Colors.blueAccent.withOpacity(0.8),
                              Colors.blue.withOpacity(0.8),
                              Colors.blueAccent.withOpacity(0.8),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(150),
                        ),
                        child: Image.asset(
                          'assets/images/book.png',
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'Help guide',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14.5,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 30),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.red.withOpacity(0.8),
                              Colors.deepOrangeAccent.withOpacity(0.8),
                              Colors.redAccent.withOpacity(0.8),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(150),
                        ),
                        child: const Icon(
                          Icons.download_rounded,
                          color: Colors.white,
                          size: 38,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'Download app',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14.5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 10),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 5),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.deepPurple.withOpacity(.8),
                                  Colors.deepPurple.shade300,
                                  Colors.deepPurple.shade300,
                                  // Colors.orangeAccent.withOpacity(0.8),
                                  // Colors.orange.withOpacity(0.8),
                                  // Colors.orangeAccent.withOpacity(0.8)
                                ],
                              ),
                              borderRadius: BorderRadius.circular(150),
                            ),
                            child: Image.asset(
                              'assets/images/video.png',
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            width: 70,
                            child: const Text(
                              'Educational video',
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 14.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Lottie.asset('assets/lotties/cat.json', height: 150),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 100,

                    decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                     topLeft: Radius.circular(20),
                     topRight: Radius.circular(20),
                    ),
                      gradient: LinearGradient(
                        colors: [
                          Colors.green[400]!,
                          // Colors.lightGreen[600]!,
                          Colors.green[300]!,
                          // Colors.lightGreen[600]!,
                          // Colors.green[600]!,
                        ],
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/friends.png',
                          width: 130,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 14,
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Invite Friends',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(
                                  width: 60,
                                ),
                                Container(
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey[300]!,),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Icon(Icons.arrow_forward_ios, size: 15 , color: Colors.grey[300],),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'join and earn commissions',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
