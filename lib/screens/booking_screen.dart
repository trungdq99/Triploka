import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
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
            Image.asset('assets/images/image2.jpeg'),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/avatar2.jpg',
                    ),
                    radius: 25.0,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Sơn Nguyễn',
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
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(12.0),
                  color: Colors.blueGrey,
                  width: 150.0,
                  height: 40.0,
                  child: Text(
                    '450.000đ/1 khách',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
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
                      'Đặt Tour',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'TOUR CHECKIN ĐỊA ĐIỂM "HOT "ĐÀ LẠT',
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
                'Tour checkin những địa điểm hot nhất tại Đà Lạt.\nKhông sợ chị google chỉ lung tung, ko sợ phải tự chạy xe máy đường xa vì đã có xe ô tô đưa đón\nLịch trình tour:\n\n1. Kombiland Cofee - Vương Quốc xương rồng giữa lòng Đà Lạt\n2. F cánh đồng hoa - Vườn hoa Châu Âu giữa lòng Đà Lạt\n3.Trang trại cún - Puppy Farm, điểm tham quan"hot" nhất hiện nay (hơn 36 loài chó quý hiếm, hơn 100 cá thể chó, tại đây bạn có thể mua các loại nông sản sạch được trồng tại Trang Trại).\n4.Tham quan vườn: bí ngô khổng lồ + dâu Tây công nghệ cao + dưa leo baby, dưa pepino + cà chua cherry, các vườn hoa...( theo mùa )\n5. Nhà Thờ Domaine Đà Lạt (địa điểm mua sắm đồ len Đà Lạt chất lượng và rẻ nhất)\n6. Khám phá “Green Hills” – Check in Cổng trời Bali, Cổng trời Nhật, Hồ trên mây, Tổ chim…\n7. QUE garden – Thiên đường sống ảo phong cách Nhật Bản ( Hồ cá KOI, Mặc trang trang phục người nhật,…)\n\nGiá tour: 450.000đ/ 1 Khách\nXe ô tô đưa đón tận khách sạn\nKhởi hành hàng ngày: 8h00 đến 16h00',
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
              '#TourGuideDaLat',
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
                    Icons.mode_comment,
                    color: Colors.teal,
                  ),
                  Text(
                    '150',
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
                    '50',
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
