import 'package:christmas_list_flutter25/services/authentication.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.auth, this.userId, this.onSignedOut})
      : super(key: key);

  final BaseAuth auth;
  final VoidCallback onSignedOut;
  final String userId;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  final _myController = TextEditingController();
  void dispose() {
    _myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final FirebaseAuth auth = FirebaseAuth.instance;
    final User user = auth.currentUser;
    final name = user.email;
    return Scaffold(
      appBar: AppBar(
        title: Text('Christmas List App'),
        backgroundColor: Colors.red[600],
        actions: [
          IconButton(icon: Icon(Icons.settings), onPressed: _openSettings)
        ],
      ),
      body: Container(
        color: Colors.green[300],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome, $name',
                style: TextStyle(fontSize: 30.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              _addPresent(),
              _getPresents(),
            ],
          ),
        ),
      ),
    );
  }

  _signOut() async {
    try {
      await widget.auth.signOut();
      widget.onSignedOut();
    } catch (e) {
      print(e);
    }
  }

  void _openSettings() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Settings'),
              backgroundColor: Colors.red[600],
            ),
            body: Container(
              color: Colors.green[300],
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Container(
                      width: 225.0,
                      child: RaisedButton(
                        child: Text(
                          'Sign Out',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.red[500],
                        onPressed: () {
                          _signOut();
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Container(
                      width: 225.0,
                      child: RaisedButton(
                        child: Text(
                          'Reset Password',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.red[500],
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      width: 225.0,
                      child: RaisedButton(
                        child: Text(
                          'Delete User',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.red[500],
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _addPresent() {
    final FirebaseAuth auth = FirebaseAuth.instance;
    final User user = auth.currentUser;
    final uid = user.uid;

    _addPresent(present) {
      CollectionReference gifts = FirebaseFirestore.instance.collection(uid);
      return gifts
          .doc(present)
          .set({'item_name': present})
          .then((value) => {present = "", print('Present added')})
          .catchError((error) => print(error));
    }

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        children: [
          Form(
            key: _formKey,
            child: TextFormField(
              controller: _myController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                hintText: 'Toy Boat',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter a present!';
                }
                return null;
              },
            ),
          ),
          FlatButton(
            onPressed: () {
              if (_formKey.currentState.validate()) {
                _addPresent(_myController.text);
                _myController.text = "";
              }
            },
            child: Text('Add Present!'),
          ),
        ],
      ),
    );
  }

  Future<void> _deletePresent(present) {
    final FirebaseAuth auth = FirebaseAuth.instance;
    final User user = auth.currentUser;
    final uid = user.uid;
    CollectionReference gifts = FirebaseFirestore.instance.collection(uid);

    return gifts
        .doc(present)
        .delete()
        .then((value) => print('present deleted!'))
        .catchError((error) => print(error));
  }

  Widget _getPresents() {
    final FirebaseAuth auth = FirebaseAuth.instance;
    final User user = auth.currentUser;
    final uid = user.uid;

    CollectionReference gifts = FirebaseFirestore.instance.collection(uid);

    return StreamBuilder<QuerySnapshot>(
      stream: gifts.snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Error!');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text('Loading');
        }

        return Expanded(
          child: ListView(
            children: snapshot.data.docs.map(
              (DocumentSnapshot document) {
                final present = document.data()['item_name'];
                return Column(
                  children: [
                    ListTile(
                      title: Text(present),
                      leading: IconButton(
                        onPressed: () => _deletePresent(present),
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red[600],
                        ),
                      ),
                    )
                  ],
                );
              },
            ).toList(),
          ),
        );
      },
    );
  }
}
