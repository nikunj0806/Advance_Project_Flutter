import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  PageController slipcontroler = PageController();
  List<dynamic> sliderlist = [];
  List<dynamic> imageList = []; 

  Future<void> slid() async {
    var responce = await http.get(Uri.parse("https://www.bme.seawindsolution.ae/api/f/slider"));
    if (responce.statusCode == 200) {
      setState(() {
        var data = jsonDecode(responce.body);
        sliderlist = data["responsedata"];
      });
    }
  }

  Future<void> loadImageList() async {
    var responce = await http.get(Uri.parse("https://your-api-url-to-fetch-images.com"));
    if (responce.statusCode == 200) {
      setState(() {
        var data = jsonDecode(responce.body);
        imageList = data["imageData"]; // Assuming imageData contains list of images
      });
    }
  }

  @override
  void initState() {
    super.initState();
    slid(); // Call the slider data function
    loadImageList(); // Call the image list function
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[400],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                height: 85,
                width: 70,
                child: Image.asset("asset/image/logo.png")),
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Search bar and buttons
            Container(
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.pink[400],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: SizedBox(
                        width: 150,
                        height: 35,
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.pink[400],
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              )),
                        ),
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink[300]),
                          onPressed: () {},
                          child: const Text(
                            "Listshow",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink[300]),
                          onPressed: () {},
                          child: const Text(
                            " Offers ",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Category buttons
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {},
                              label: Text(
                                "Workshop",
                                style: TextStyle(
                                    color: Colors.pink[400],
                                    fontWeight: FontWeight.bold),
                              ),
                              icon: Icon(
                                Icons.shop_2_outlined,
                                color: Colors.pink[400],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ElevatedButton.icon(
                              onPressed: () {},
                              label: Text("Kids",
                                  style: TextStyle(
                                      color: Colors.pink[400],
                                      fontWeight: FontWeight.bold)),
                              icon: Icon(
                                Icons.child_friendly_sharp,
                                color: Colors.pink[400],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ElevatedButton.icon(
                              onPressed: () {},
                              label: Text("Comedy",
                                  style: TextStyle(
                                      color: Colors.pink[400],
                                      fontWeight: FontWeight.bold)),
                              icon: Icon(
                                Icons.face_rounded,
                                color: Colors.pink[400],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ElevatedButton.icon(
                              onPressed: () {},
                              label: Text("Music",
                                  style: TextStyle(
                                      color: Colors.pink[400],
                                      fontWeight: FontWeight.bold)),
                              icon: Icon(
                                Icons.music_video,
                                color: Colors.pink[400],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
            
            SizedBox(
              height: 200,
              child: PageView.builder(
                controller: slipcontroler,
                itemCount: sliderlist.length,
                itemBuilder: (context, index) {
                  var slideritem = sliderlist[index];
                  return InkWell(
                    onTap: () {},
                    child: Image.network(
                      slideritem["Image"],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      child: const Text(
                        "Find New Experience",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: const Text("Engage,Investigate,Draf a plan"),
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Text("See all>",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.pink,
                                fontWeight: FontWeight.bold)))
                  ],
                ),
              ],
            ),
            // Dynamic Images from API
            imageList.isNotEmpty
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: imageList.map((imageItem) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.network(
                              imageItem["imageUrl"], 
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  )
                : Center(child: CircularProgressIndicator()),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      child: const Text(
                        "Find New Experience",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: const Text("Engage,Investigate,Draf a plan"),
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Text("See all>",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.pink,
                                fontWeight: FontWeight.bold)))
                  ],
                ),
              ],
            ),
            
            imageList.isNotEmpty
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: imageList.map((imageItem) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 200,
                            width: 100,
                            child: Image.network(
                              imageItem["imageUrl"], 
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  )
                : Center(child: CircularProgressIndicator()),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.event), label: "Event"),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "List Show"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}
