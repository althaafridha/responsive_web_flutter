import 'package:flutter/material.dart';
import 'package:responsive_web/features/widgets/appbar.dart';

class DesktopPageView extends StatelessWidget {
  const DesktopPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeData().scaffoldBackgroundColor,
      appBar: appBarWidget(),
      body: ListView(
        shrinkWrap: true,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(right: 16),
                  child: Container(
                    height: MediaQuery.sizeOf(context).height,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12)
                      )
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Container(
                        height: 500,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
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
                                width: MediaQuery.of(context).size.width / 3,
                                height: 15,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 4,
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
                      crossAxisCount: 4,
                      crossAxisSpacing: 10.0,
                      physics: const NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 10.0,
                      padding: const EdgeInsets.all(10.0),
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          color: Colors.grey,
                        ),
                        Container(
                          height: 150,
                          width: 150,
                          color: Colors.grey,
                        ),
                        Container(
                          height: 150,
                          width: 150,
                          color: Colors.grey,
                        ),
                        Container(
                          height: 150,
                          width: 150,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                width: MediaQuery.sizeOf(context).width / 2,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                height: MediaQuery.of(context).size.height,
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      color: Colors.grey,
                      height: 150,
                      margin: const EdgeInsets.only(right: 16),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      color: Colors.grey,
                      height: 150,
                      margin: const EdgeInsets.only(right: 16),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      color: Colors.grey,
                      height: 150,
                      margin: const EdgeInsets.only(right: 16),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      color: Colors.grey,
                      height: 150,
                      margin: const EdgeInsets.only(right: 16),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      color: Colors.grey,
                      height: 150,
                      margin: const EdgeInsets.only(right: 16),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      color: Colors.grey,
                      height: 150,
                      margin: const EdgeInsets.only(right: 16),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              )),
            ],
          )
        ],
      ),
    );
  }
}
