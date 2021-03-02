import 'package:flutter/material.dart';
import 'package:lesson1_Creative/model/books.dart';

import 'package:lesson1_Creative/model/user_record.dart';

import 'book_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/HomeScreen';
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomeScreen> {
  UserRecord userRecord;
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
    userRecord = ModalRoute.of(context)
        .settings
        .arguments; //this retrieves the user record from context of arguments from our button click function in the formdemo (NAVIGATOR?)
    return WillPopScope(
      //inorder to disable back button we must wrap scaffoled with this widget
      onWillPop: () =>
          Future.value(false), // seting this to false actually disables back button
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Ebook Shop',
            style: TextStyle(
              color: Colors.greenAccent[700],
              fontSize: 24.0,
              fontFamily: 'Roboto',
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text(userRecord.email),
              ),
              ListTile(
                leading: Icon(Icons.menu_book),
                title: Text('My Books'),
                onTap: con.profile,
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Sign Out'),
                onTap: con.signOut, //signout upon click
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                childAspectRatio: 2 / 3,
                maxCrossAxisExtent: 300,
                mainAxisSpacing: 0,
              ),
              itemCount: bookList.length,
              itemBuilder: con.getIcon),
        ),
      ),
    );
  }
}

class _Controller {
  _HomeState state;
  _Controller(this.state);
  List<int> selected;

  void profile() async {
    await Navigator.pushNamed(
        state.context,
        BookScreen
            .routeName, //when we navigate back from our profile page we dont want to see the drawer again we want to see the home page, so we will use await and asynchronous programming
        arguments: state.userRecord);
    Navigator.of(state.context).pop(); //here we close the drawyer
  }

  void signOut() {
    Navigator.of(state.context).pop(); //close the drawer
    Navigator.of(state.context)
        .pop(); //pop UserHome, must call pop twice since stack hs both objects on top
  }

  Widget getIcon(BuildContext context, int index) {
    return Container(
      // needed
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          _onTap(context, index);
        }, // needed
        child: Image.network(
          bookList[index].imageURL,
          width: 22,
          fit: BoxFit.cover,
        ),
      ),

      // child: Container(
      //   child: Image.network(bookList[index].imageURL),
      //   height: 40,
      // ),
    );
  }

  void _onTap(BuildContext context, int index) {
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
  }
}
