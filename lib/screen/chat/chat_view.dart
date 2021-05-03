
import 'package:flutter/material.dart';
import 'package:fluttergram/widgets/profile_menu.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({Key key}) : super(key: key);

  static String route = "/chat";

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController search = TextEditingController();

  @override
  void dispose() {
    search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 40.0,
                width: 380,
                child: SearchInput(search: search),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Storie(),
                Storie(),
                Storie(),
                Storie(),
                Storie(),
                Storie(),
                Storie(),
              ],
            ),
          ),
          SizedBox(height: 50,),
          ProfileMenu(text: 'Anita la del barrio', icon: 'assets/images/profile2.jpg'),
          ListTile(
            leading: FadeInImage(
              image: AssetImage('assets/images/profile2.jpg'),
              placeholder: AssetImage('assets/images/profile2.jpg'),
              fadeInCurve: Curves.ease,
            ),
            title: Text('data'),
          )
        ],
      ),
    );
  }
}

class Storie extends StatelessWidget {
  const Storie({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 70,
          width: 70,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 2,
              ),
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/images/profile2.jpg'),
                  fit: BoxFit.contain),
            ),
          ),
        ),
        Text('Ana'),
        SizedBox(
          width: 90,
        )
      ],
    );
  }
}

class SearchInput extends StatelessWidget {
  const SearchInput({
    Key key,
    @required this.search,
  }) : super(key: key);

  final TextEditingController search;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: TextAlignVertical(y: 1),
      controller: search,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: 'Search',
      ),
    );
  }
}

