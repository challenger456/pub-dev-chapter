import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';
import 'badges.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(Icons.headphones),
                  Icon(Icons.icecream),
                  Icon(Icons.home),
                  Icon(CupertinoIcons.home),
                  Icon(
                    FontAwesomeIcons.house,
                    size: 56,
                    color: Colors.orangeAccent,
                  ),
                  Icon(FontAwesomeIcons.faceAngry),
                  Icon(FontAwesomeIcons.facebookMessenger),
                  Icon(FontAwesomeIcons.airbnb),
                  Icon(FontAwesomeIcons.linkedin),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const ReadMoreText(
                '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

              Why do we use it?
                  It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).

              ''',
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show all',
                trimExpandedText: 'Hide all',
                moreStyle: TextStyle(
                  color: Colors.orange,
                ),
                colorClickableText: Colors.teal,
                style: TextStyle(color: Colors.red),
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(
                        context, Badges.id);
                  },
                  child: const Text('click me'))
            ]),
          ),
        ),
      ),
    );
  }
}
