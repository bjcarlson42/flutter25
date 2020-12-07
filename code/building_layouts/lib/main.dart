import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Creating Layouts'),
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.more,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Business'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Don\'t be afraid to give up on the good to go for the great.',
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Published from ofspace',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      '23, March 2019',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Image(
            image: NetworkImage('https://flutter25.com/code.png'),
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis diam vel lectus varius rutrum quis a massa. Morbi accumsan nulla in magna rutrum dapibus. Proin vehicula at erat vitae venenatis. Nullam nec laoreet orci. Aliquam feugiat felis a condimentum semper. Curabitur dapibus congue ultricies. Proin finibus, odio in molestie volutpat, ipsum enim condimentum lorem, rhoncus efficitur enim dolor ac nisl. Integer lacinia varius elit at viverra. Sed a metus ut neque malesuada tincidunt vel sit amet lorem. Aliquam rutrum dui a dui gravida rutrum. Sed aliquet fringilla eros et iaculis. Fusce aliquam lorem eu tortor vestibulum, vel fermentum justo ultrices. Proin eget tortor eget elit varius congue vitae in velit.',
                style: TextStyle(height: 1.5),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Morbi faucibus risus eu neque fermentum rutrum. Aenean sagittis sit amet mi a aliquet. Etiam dapibus libero eget neque interdum vulputate. Aenean rutrum at lectus nec consequat. Integer dui purus, auctor nec lorem varius, consequat pharetra orci. Ut tempor eu ante quis suscipit. Ut nec tellus quis diam suscipit ornare in sit amet eros.',
                style: TextStyle(height: 1.5),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Integer felis quam, ultrices nec laoreet vel, faucibus nec mauris. Etiam magna velit, luctus sit amet molestie id, tincidunt nec lorem. Vivamus ac lorem id sapien viverra accumsan. Mauris nec accumsan orci. Etiam vitae rhoncus lacus, vitae pellentesque lacus. Vivamus eget ultrices ligula. Aenean sollicitudin odio sit amet mauris varius aliquam. Praesent interdum efficitur odio, id auctor est sodales in. Nunc id accumsan leo. In hac habitasse platea dictumst. Sed vestibulum neque nisl, vel luctus lectus tincidunt vehicula. Phasellus gravida ipsum eget metus maximus lacinia. Duis ullamcorper placerat semper.',
                style: TextStyle(height: 1.5),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
