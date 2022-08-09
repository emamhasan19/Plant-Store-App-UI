import 'package:flutter/cupertino.dart';

import 'detailsPage.dart';
import 'package:flutter/material.dart';

class plantCard extends StatelessWidget {
  final String? plantpic;
  final String? plantname;
  final String? plantprice;
  const plantCard({
    Key? key,
    required this.plantpic,
    required this.plantname,
    required this.plantprice,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var height = screenSize.height;
    var width = screenSize.width;
    return Padding(
      padding: EdgeInsets.only(
        right: width * 0.02,
      ),
      child: Container(
        height: height / 2.2,
        width: width / 1.7,
        child: Stack(
          children: [
            Container(
              height: height / 2.2,
              width: width / 1.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("${plantpic}"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: height / 3.5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: height / 10,
                  width: width / 2,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => detailPage(
                              plantpic: "${plantpic}",
                              plantname: "${plantname}",
                              plantprice: "${plantprice}"),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${plantname}",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "${plantprice}",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_right_alt,
                          size: 40,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
