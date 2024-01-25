import 'package:flutter/material.dart';
import 'package:responsive_web/features/widgets/appbar.dart';

class MobilePageView extends StatelessWidget {
  const MobilePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeData().scaffoldBackgroundColor,
      drawer: const Drawer(),
      appBar: appBarWidget(),
      body: ListView(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.grey,
                // borderRadius: BorderRadius.circular(12)
              ),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width / 3,
                      height: 15,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width / 4,
                      height: 15,
                      color: Colors.grey,
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
          height: 12.0,
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 10.0,
            padding: const EdgeInsets.all(10.0),
            children: [
              Container(height: 150, width: 150, color: Colors.grey,),
              Container(height: 150, width: 150, color: Colors.grey,),
              Container(height: 150, width: 150, color: Colors.grey,),
              Container(height: 150, width: 150, color: Colors.grey,),
            ],
          ),
        ],
      ),
    );
  }
}
