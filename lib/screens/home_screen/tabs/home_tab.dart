import 'package:flutter/material.dart';
import 'package:triploka/screens/booking_screen.dart';
import 'package:triploka/screens/review_screen.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  Widget buildContent(String image, String title, String avatar, String name,
      String like, double widthSizeBox, int role) {
    return FlatButton(
      onPressed: () {
        if (role == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ReviewScreen()),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BookingScreen()),
          );
        }
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                width: 2.0,
                color: Colors.teal,
              ),
              bottom: BorderSide(
                width: 2.0,
                color: Colors.teal,
              ),
              right: BorderSide(
                width: 2.0,
                color: Colors.teal,
              ),
              top: BorderSide(
                width: 2.0,
                color: Colors.teal,
              ),
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        width: 200.0,
        child: Column(
          children: <Widget>[
            Image.asset(
              image,
              height: 150,
              fit: BoxFit.cover,
            ),
            Container(
              height: 30.0,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5.0,
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(avatar),
                      radius: 10.0,
                    ),
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    width: widthSizeBox,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      ),
                      Text(
                        like,
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 15.0,
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Triploka'),
        actions: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Icon(
              Icons.send,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          //Di va trai nghiem
          Container(
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.directions_bike,
                  color: Colors.teal,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'Đi và trải nghiệm',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 220.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                buildContent('assets/images/image1.jpeg', 'Camping Đà Lạt',
                    'assets/images/avatar1.jpg', 'Rosie_24', '190', 45, 1),
                buildContent('assets/images/image2.jpeg', 'Đà Lạt và tôi',
                    'assets/images/avatar1.png', 'Sáng Nguyễn', '70', 20, 1),
                buildContent(
                    'assets/images/image3.jpeg',
                    'Hàn Quốc thu nhỏ tại ĐL',
                    'assets/images/avatar3.jpeg',
                    'Đống Ngô',
                    '240',
                    40,
                    1),
                buildContent(
                    'assets/images/image4.jpeg',
                    '1 chiếc review nhỏ xinh tại',
                    'assets/images/avatar4.png',
                    'Phâyy Phụngg',
                    '270',
                    12,
                    1),
                buildContent(
                    'assets/images/image5.jpeg',
                    'Đồi Đa Phú - "kẻ thay thế"',
                    'assets/images/avatar5.png',
                    'Loc Tai Trinh',
                    '150',
                    20,
                    1),
                buildContent(
                    'assets/images/image6.jpeg',
                    '𝐌𝐨̣̂𝐭 đ𝐞̂𝐦 𝐨̛̉ "𝐓𝐢𝐞̂̉𝐮 𝐂𝐡𝐚̂𝐮 𝐀̂𝐮"',
                    'assets/images/avatar4.jpeg',
                    'Bao Tran',
                    '250',
                    45,
                    1),
              ],
            ),
          ),
          //Tim ban dong hanh
          Container(
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.person_add,
                  color: Colors.teal,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'Tìm bạn đồng hành',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 220.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                buildContent(
                    'assets/images/image2.jpeg',
                    'TOUR CHECKIN ĐỊA ĐIỂM "HOT "ĐÀ LẠT',
                    'assets/images/avatar2.jpg',
                    'Sơn Nguyễn',
                    '100',
                    25,
                    2),
                buildContent(
                    'assets/images/image7.jpeg',
                    'Cùng tham gia TOUR "HOT "ĐÀ LẠT',
                    'assets/images/avatar6.png',
                    'Win Nguyễn',
                    '300',
                    25,
                    2),
                buildContent(
                    'assets/images/image8.jpeg',
                    'CHECKIN ĐỊA ĐIỂM "HOT "ĐÀ LẠT',
                    'assets/images/avatar7.png',
                    'Thảo Trần',
                    '130',
                    40,
                    2),
                buildContent(
                    'assets/images/image9.jpeg',
                    'Cùng Chill với những địa điểm',
                    'assets/images/avatar8.png',
                    'Phương Lê',
                    '75',
                    42,
                    2),
                buildContent(
                    'assets/images/image10.jpeg',
                    'TOUR CHECKIN ĐỊA ĐIỂM "HOT "ĐÀ LẠT',
                    'assets/images/avatar9.png',
                    'Sơn Nguyễn',
                    '97',
                    32,
                    2),
                buildContent(
                    'assets/images/image11.jpeg',
                    'TOUR CHECKIN ĐỊA ĐIỂM "HOT "ĐÀ LẠT',
                    'assets/images/avatar10.png',
                    'girlinfeb',
                    '100',
                    45,
                    2),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
