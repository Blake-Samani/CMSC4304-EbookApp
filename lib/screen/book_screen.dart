import 'package:flutter/material.dart';
import 'package:lesson1_Creative/model/books.dart';

class BookScreen extends StatefulWidget {
  static const routeName = '/bookScreen';
  @override
  State<StatefulWidget> createState() {
    return _BookState();
  }
}

class _BookState extends State<BookScreen> {
  _Controller con;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    con = _Controller(this);
  }

  void render(fn) {
    setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ebook Collection',
          style: TextStyle(
            color: Colors.greenAccent[700],
            fontSize: 24.0,
            fontFamily: 'Roboto',
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: bookList.length,
          itemBuilder: con.getIcon,
        ),
      ),
    );
  }
}

class _Controller {
  _BookState state;
  _Controller(this.state);
  List<int> selected;

  Widget getIcon(BuildContext context, int index) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(10.0),
      child: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: IconButton(
            icon: Image.network(bookList[index].imageURL),
            onPressed: () {
              _onPressed(context, index);
            },
            iconSize: 300.0,
          ),
        ),
      ),
    );
  }

  void _onPressed(BuildContext context, int index) {
    if (selected == null) {
      showDetails(context, bookList[index]);
    } else {
      state.render(() {
        if (selected.indexOf(index) < 0) {
          //if corresponding item is not in selected list yet
          selected.add(index);
        } else {
          // cancel the selection by doing long press again
          selected.removeWhere((value) =>
              value ==
              index); //if value of each element is same as index? remove when this condition is met
          if (selected.length == 0) selected = null;
        }
      });
    }
  }

  void showDetails(BuildContext context, Book book) {
    //how to build a popup dialog box upon tapping button
    showDialog(
      context: context,
      barrierDismissible:
          false, //if border can be dismissed by tapping outside of diagbox or hitting x
      builder: (context) => AlertDialog(
        backgroundColor: Colors.black,
        title: Text(
          book.title,
          style: TextStyle(
            color: Colors.greenAccent[700],
            fontFamily: 'Roboto',
          ),
        ),
        actions: [
          FlatButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              'Close',
              style: TextStyle(
                color: Colors.greenAccent[700],
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ],
        content: Card(
          color: Colors.grey[900],
          elevation: 15.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex:
                          2, //here use use flex to stop rendering errors when using pop up dialog boxes
                      child: Image.network(book.imageURL),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        book.price,
                        style: TextStyle(
                          color: Colors.greenAccent[700],
                          fontFamily: 'Roboto',
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } //this function takes context and a course object
}
