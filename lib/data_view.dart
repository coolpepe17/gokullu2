import 'package:flutter/material.dart';

import 'data/database_helper.dart';
import 'models/user.dart';
import 'models/utility.dart';
import 'screen/mob_reg/widget/form1.dart';

class DataView extends StatefulWidget {
  @override
  _DataViewState createState() => _DataViewState();
}

class _DataViewState extends State<DataView> {
  DatabaseHelper helper = DatabaseHelper();
  Future<List<User>> data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = helper.getDataFromUserTable();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sqlite Demo'),
      ),
      body: Container(
        child: FutureBuilder(
          future: helper.getDataFromUserTable(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Center(
                  child: CircularProgressIndicator(),
                );
              case ConnectionState.waiting:
                return Center(
                  child: CircularProgressIndicator(),
                );
              case ConnectionState.done:
                if (snapshot.hasData) {
                  return Container(
                    child: ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Container(
                            height: 50,
                            width: 50,
                            // child: Utility.imageFromBase64String(
                            //     snapshot.data[index].image),
                          ),
                          title: Text('Email : ${snapshot.data[index].email}'),
                          subtitle: Row(
                            children: [
                              Text(
                                  'Password : ${snapshot.data[index].password}'),
                              SizedBox(
                                width: 5.0,
                              ),
                              // Text('Mobile : ${snapshot.data[index].mobileNo}'),
                            ],
                          ),
                          trailing: SizedBox(
                            width: 100.0,
                            child: Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.update),
                                  onPressed: () {
                                    updateUser(snapshot.data[index]);
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.delete),
                                  onPressed: () {
                                    delete(snapshot.data[index].id);
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                } else {
                  return Container(
                    child: Center(
                      child: Text('no data'),
                    ),
                  );
                }
            }
            return Container();
          },
        ),
      ),
    );
  }

  delete(int id) async {
    int result = await helper.deleteUser(id);

    Navigator.of(context).pop();

    if (result != 0) {
      return showDialog(
        context: context,
        child: AlertDialog(
          content: Text('Successfully deleted'),
        ),
      );
    }
  }

  updateUser(User obj) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => SignUp(
              obj: obj,
            )));
    //helper.updateUser(obj);
  }
}
