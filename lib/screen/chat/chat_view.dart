
import 'package:flutter/material.dart';
import 'package:fluttergram/widgets/bottom_navbar.dart';

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
      bottomNavigationBar: BottomNavBar(selectedMenu: MenuState.message),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 40.0,
                width: 420,
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
          Chat(),
          Chat(),
          Chat(),
          Chat(),
          Chat(),
          Chat(),
          Chat(),
          Chat(),
          Chat(),
          Chat(),
          Chat(),
          Chat(),
          Chat(),
          Chat(),
          Chat(),
          Chat(),
        ],
      ),
    );
  }
}

class Chat extends StatelessWidget {
  const Chat({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Ana Rojas'),
      subtitle: Text('Este es un mensaje para Ana Rojas '),
      leading: SizedBox(
        width: 100,
        height: 100,
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
      ) 
      /* FadeInImage(
        image: AssetImage('assets/images/profile2.jpg'),
        placeholder: AssetImage('assets/images/profile2.jpg'), */

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

