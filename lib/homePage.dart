import 'package:flutter/material.dart';
import 'package:plant_store_app/detailsPage.dart';
import 'package:plant_store_app/plantCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var height = screenSize.height;
    var width = screenSize.width;
    return Scaffold(
      // backgroundColor: Colors.amber,
      body: Padding(
        padding: EdgeInsets.only(
          top: height * 0.045,
          left: width * 0.02,
          right: width * 0.02,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, Swakshor",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      "Do you want to find plants?",
                      style: TextStyle(
                        fontSize: 15,
                        // color: Colors.green,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.notifications,
                  size: 30,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 12,
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 49,
                    width: 49,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(
                      Icons.qr_code,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              "Populer Plants",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  plantCard(
                    plantpic: "images/plant1.jpg",
                    plantname: "Ficus Mycrospora",
                    plantprice: "\$54.90",
                  ),
                  plantCard(
                    plantpic: "images/plant2.jpg",
                    plantname: "Monosyra Xynthra",
                    plantprice: "\$73.90",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.03),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "All",
                        style: TextStyle(fontSize: 20),
                      ),
                      style: TextButton.styleFrom(
                        // padding: const EdgeInsets.all(16.0),
                        primary: Colors.white,
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.03),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Indoors",
                        style: TextStyle(fontSize: 20),
                      ),
                      style: TextButton.styleFrom(
                        // padding: const EdgeInsets.all(16.0),
                        primary: Colors.white,
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.03),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Outdoors",
                        style: TextStyle(fontSize: 20),
                      ),
                      style: TextButton.styleFrom(
                        // padding: const EdgeInsets.all(16.0),
                        primary: Colors.white,
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.03),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Gardening",
                        style: TextStyle(fontSize: 20),
                      ),
                      style: TextButton.styleFrom(
                        // padding: const EdgeInsets.all(16.0),
                        primary: Colors.white,
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.03),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Balcony",
                        style: TextStyle(fontSize: 20),
                      ),
                      style: TextButton.styleFrom(
                        // padding: const EdgeInsets.all(16.0),
                        primary: Colors.white,
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              height: height / 9,
              width: width,
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Container(
                      height: height / 9.5,
                      width: width / 7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("images/plant1.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Ficus Mycrospora",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                color: Colors.black),
                          ),
                          Text(
                            "Indoor",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "\$34.90",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
