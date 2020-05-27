import 'package:flutter/material.dart';

class ReviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
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
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Image.asset('assets/images/image1.jpeg'),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/avatar1.jpg',
                    ),
                    radius: 25.0,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Rosie_24',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '13/05/2020 lúc 22:59',
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 80.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  width: 101.0,
                  height: 40.0,
                  //color: Colors.teal,
                  child: FlatButton(
                    child: Text(
                      '+ Theo dõi',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Camping Đà Lạt',
                style: TextStyle(
                  color: Colors.teal.shade900,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Trẻ sống bằng trải nghiệm Già sống bằng kỷ niệm...! Để có 1 tâm trạng tốt nhất khi đọc bài viết thì mình xin thông điệp đến các bạn là: rác bọn mình đã dọn sạch và cho vào túi rác được mua sẵn, sau đó chở ra bãi bỏ. Nên các bạn yên tâm về vấn đề vệ sinh nhé. Vì mình rất yêu vẻ đẹp của Đà Lạt nên mình sẽ không để rác làm xấu đi vẻ đẹp đó ❤️ ',
                style: TextStyle(
                  color: Colors.teal.shade700,
                  fontSize: 18.0,
                ),
              ),
            ),
            Text(
              '#DaLat',
              style: TextStyle(
                color: Colors.teal.shade700,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            Text(
              '#Camping',
              style: TextStyle(
                color: Colors.teal.shade700,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                  Text(
                    '190',
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.mode_comment,
                    color: Colors.teal,
                  ),
                  Text(
                    '100',
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.share,
                    color: Colors.teal,
                  ),
                  Text(
                    '80',
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Bình luận',
              style: TextStyle(
                color: Colors.teal.shade900,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/Triploka.png',
                    ),
                    radius: 25.0,
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Viết bình luận',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
