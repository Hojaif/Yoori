import 'package:flutter/material.dart';
import 'package:yoori/views/screen/NavBarScreen/Dashbord/componets/product_card.dart';

class Dashbord extends StatefulWidget {
  const Dashbord({super.key});

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset('assets/icons/yoori.png'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icons/surche.png',
              width: screenwidth * 0.08,
              height: screenHeight * 0.08,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                size: screenHeight * 0.025,
              )),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icons/mune.png',
              width: screenwidth * 0.08,
              height: screenHeight * 0.08,
            ),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/Frame 2.jpg",
                  width: screenwidth,
                  height: screenHeight * 0.3,
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    "Popular Categories",
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                      childAspectRatio: 0.6,
                    ),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          CircleAvatar(
                            radius: screenwidth * 0.09,
                            child: Center(
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/images/image.png',
                                  width: screenwidth * 0.15,
                                  height: screenwidth * 0.15,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text("Men"),
                        ],
                      );
                    },
                  ),
                ),
                sectionHeader("Campaign"),
                campaignProductList(), // Campaign list fixed
                sectionHeader("Pre Order"),
                preorderProductList(),
                sectionHeader("Flash Sale"),
                flashSaleProductList(), // Flash Sale list fixed
                sectionHeader("Just for you"),
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
                childAspectRatio: 0.68,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return const ProductCard();
                },
                childCount: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget for section headers (e.g., "Campaign", "Pre Order")
  Widget sectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
          const Spacer(),
          const Text(
            "View more",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }

  // Widget for horizontal scrolling product list
  Widget campaignProductList() {
    final Size size = MediaQuery.of(context).size;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        height: screenHeight * 0.23,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              shape: const BeveledRectangleBorder(),
              child: Container(
                width: 150, // Width of the card and container
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          child: Image.asset(
                            'assets/images/image (4).png',
                            width: 150, // Width matches the card width
                            height:
                                150, // Height can be adjusted based on design needs
                            fit: BoxFit
                                .cover, // Changed to cover to make sure the image scales properly
                          ),
                        ),
                        // const Positioned(
                        //   top: 16,
                        //   left: 10,
                        //   child: Column(
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: [
                        //       Text(
                        //         'SOUND AND MUSIC',
                        //         style: TextStyle(
                        //           color: Colors.white,
                        //           fontSize: 12,
                        //           fontWeight: FontWeight.bold,
                        //         ),
                        //       ),
                        //       SizedBox(height: 4),
                        //       Text(
                        //         '30% OFF',
                        //         style: TextStyle(
                        //           color: Colors.white,
                        //           fontSize: 18,
                        //           fontWeight: FontWeight.bold,
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        const Positioned(
                          top: 14,
                          right: 16,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 10,
                            child: Icon(
                              Icons.arrow_forward,
                              size: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildTimerBox('07d'),
                        buildTimerBox('05h'),
                        buildTimerBox('08m'),
                        buildTimerBox('11s'),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  // Widget for Flash Sale
  Widget flashSaleProductList() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        height: 230, // Set height for the horizontal list
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              shape: const BeveledRectangleBorder(),
              child: Container(
                width: 160, // Width of the card and container
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      child: Stack(
                        children: [
                          ClipRRect(
                            child: Image.asset(
                              'assets/images/image (2).png',
                              width: 150, // Width matches the card width
                              height: double
                                  .infinity, // Height can be adjusted based on design needs
                              fit: BoxFit
                                  .cover, // Changed to cover to make sure the image scales properly
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 18,
                            child: Container(
                              height: 30,
                              color: const Color.fromARGB(99, 0, 0, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  buildTimerBox('07d'),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  buildTimerBox('05h'),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  buildTimerBox('08m'),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  buildTimerBox('11s'),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Mackbook air"),
                              Spacer(),
                              Text("4.5"),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "&14530",
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
            ;
          },
        ),
      ),
    );
  }
}

// Widget for building the timer box
Widget buildTimerBox(String time) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(4.0),
    ),
    child: Text(
      time,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 12.0,
      ),
    ),
  );
}

Widget preorderProductList() {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: Container(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white,
            shape: const BeveledRectangleBorder(),
            child: Container(
              width: 150, // Width of the card and container
              child: Column(
                children: [
                  Container(
                    height: 190,
                    child: Stack(
                      children: [
                        ClipRRect(
                          child: Image.asset(
                            'assets/images/image (3).png',
                            width: 150, // Width matches the card width
                            height: double
                                .infinity, // Height can be adjusted based on design needs
                            fit: BoxFit
                                .cover, // Changed to cover to make sure the image scales properly
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 18,
                          child: Container(
                            height: 30,
                            color: const Color.fromARGB(99, 0, 0, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                buildTimerBox('07d'),
                                const SizedBox(
                                  width: 4,
                                ),
                                buildTimerBox('05h'),
                                const SizedBox(
                                  width: 4,
                                ),
                                buildTimerBox('08m'),
                                const SizedBox(
                                  width: 4,
                                ),
                                buildTimerBox('11s'),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Iphone 14 Pro Max"),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "&14530",
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    ),
  );
}
