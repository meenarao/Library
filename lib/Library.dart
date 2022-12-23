import 'package:flutter/material.dart';
import 'Qrcode.dart';
class MyAppd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hero ListView',
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primarySwatch: Colors.blue, platform: TargetPlatform.iOS),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Books")),
      body: ListView.builder(
        
        itemCount: _images.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Books $index'),
            leading: Hero(
              tag: index,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.network(_images[index],
                    width: 100, fit: BoxFit.cover),
              ),
            ),
            // onTap: () {
            //   Navigator.of(context).push(MaterialPageRoute(
            //       builder: (context) => SecondPage(heroTag: index)));
            // },
             onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyCustomWidget()));
            },
          );
        },
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final int heroTag;
  const SecondPage({required this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Books")),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Hero(
                tag: heroTag,
                child: Image.network(_images[heroTag]),
              ),
            ),
          ),
          Expanded(
            child: Text(
              "List of books are available students can borrow and read books",
              style: Theme.of(context).textTheme.headline5,
            ),
          )
        ],
        
      ),
    );
  }
}

final List<String> _images = [
  'https://images.pexels.com/photos/177598/pexels-photo-177598.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  'https://images.pexels.com/photos/3771045/pexels-photo-3771045.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  'https://images.pexels.com/photos/1370295/pexels-photo-1370295.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  'https://images.pexels.com/photos/159866/books-book-pages-read-literature-159866.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  'https://images.pexels.com/photos/577514/pexels-photo-577514.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  'https://images.pexels.com/photos/2599244/pexels-photo-2599244.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  'https://images.pexels.com/photos/6476808/pexels-photo-6476808.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  'https://images.pexels.com/photos/147413/twitter-facebook-together-exchange-of-information-147413.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  'https://images.pexels.com/photos/40568/medical-appointment-doctor-healthcare-40568.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'

  
];
