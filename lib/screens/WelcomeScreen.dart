import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:triploka/screens/home_screen/home.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  final List<String> areas = [
    "Đà Lạt",
    "Nha Trang",
    "Vũng Tàu",
    "Đà Nẵng",
    "Phan Thiết",
    "Ninh Bình",
  ];

  Widget searchResult(String area) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        area,
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.teal,
        ),
      ),
    );
  }

  AutoCompleteTextField searchTextField;
  GlobalKey<AutoCompleteTextFieldState<String>> key = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        },
        backgroundColor: Colors.teal,
        child: Icon(
          Icons.near_me,
        ),
      ),
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: AutoCompleteTextField<String>(
            key: key,
            clearOnSubmit: true,
            controller: _searchController,
            suggestions: areas,
            style: TextStyle(
              color: Colors.teal,
              fontSize: 20.0,
            ),
            decoration: InputDecoration(
              hintText: "Bạn muốn đi đâu nè?",
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 15.0, top: 16.0),
              hintStyle: TextStyle(color: Colors.teal.shade900),
              hoverColor: Colors.red,
              icon: Container(
                margin: EdgeInsets.only(left: 20, top: 5),
                width: 10,
                height: 10,
                child: Icon(
                  Icons.search,
                  color: Colors.teal,
                ),
              ),
              suffix: FlatButton(
                onPressed: () {
                  _searchController.clear();
                },
                child: Icon(
                  Icons.clear,
                  color: Colors.teal,
                ),
              ),
            ),
            itemFilter: (item, query) {
              return item.toLowerCase().startsWith(query.toLowerCase());
            },
            itemSorter: (a, b) {
              return a.compareTo(b);
            },
            itemSubmitted: (item) {
              setState(
                () {
                  searchTextField.textField.controller.text = item;
                },
              );
            },
            itemBuilder: (context, item) {
              return searchResult(item);
            },
            submitOnSuggestionTap: true,
          ),
        ),
      ),
    );
  }
}
