import 'package:flutter/material.dart';

class AccountTab extends StatelessWidget {
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
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/Triploka.png'),
                      radius: 50.0,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: SizedBox(
                          width: 25.0,
                          height: 25.0,
                          child: FloatingActionButton(
                            backgroundColor: Colors.teal,
                            onPressed: () {},
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Triploka',
                          style: TextStyle(
                            color: Colors.teal.shade900,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Flexible(
                            flex: 2,
                            child: FlatButton(
                              color: Colors.teal,
                              onPressed: () {},
                              child: Text(
                                '100 điểm',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: FlatButton(
                              color: Colors.teal,
                              onPressed: () {},
                              child: Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: FlatButton(
                              color: Colors.teal,
                              onPressed: () {},
                              child: Icon(
                                Icons.share,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        '24',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        'Bài viết',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        '11',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        'Người theo dõi',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        '99',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        'Đang theo dõi',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 75.0,
                vertical: 20.0,
              ),
              child: FlatButton(
                color: Colors.teal,
                onPressed: () {},
                child: Text(
                  'Thêm mô tả về bạn',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
