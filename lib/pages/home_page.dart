import 'package:flutter/material.dart';
import 'package:member_profile/theme.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: darkColor,
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 100,
                  child: const Header(),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const TeamMember(),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
            ),
          ],
        ));
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Image.asset(
            "assets/images/logo-mchub.png",
            scale: .8,
          ),
        ),
        Expanded(
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0)
                .add(const EdgeInsets.only(bottom: 5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good Morning",
                  style: textStyle(greyColor, textMd, textRegular),
                ),
                Text(
                  "Mesail Creative Hub",
                  style: textStyle(whiteColor, textLg, textBold),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Icon(
            Icons.notifications,
            color: whiteColor,
            size: 24,
          ),
        )
      ],
    );
  }
}

class TeamMember extends StatefulWidget {
  const TeamMember({Key? key}) : super(key: key);

  @override
  _TeamMember createState() => _TeamMember();
}

class _TeamMember extends State<TeamMember> with TickerProviderStateMixin {
  final TextEditingController _searchCtrl = TextEditingController();
  late TabController _tabCtrl;

  @override
  void initState() {
    super.initState();
    _tabCtrl = TabController(initialIndex: 1, length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 7,
                child: TextField(
                  controller: _searchCtrl,
                  decoration: InputDecoration(
                    labelText: "Find your favorite mentor",
                    hintText: "Search",
                    fillColor: greyColor,
                    filled: true,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: const Icon(Icons.search),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBar(
            isScrollable: true,
            controller: _tabCtrl,
            tabs: const [
              Tab(
                child: Text("UI/UX Design"),
              ),
              Tab(
                child: Text("Software Development"),
              ),
              Tab(
                child: Text("Graphic Design"),
              ),
              Tab(
                child: Text("3D Modeling"),
              ),
              Tab(
                child: Text("Motion Graphic"),
              ),
              Tab(
                child: Text("Audio & Video"),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              const Text("Top Mentor"),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) => Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/picture.png"),
                      ),
                      const Text("Mulia Firmansyah Arief"),
                      const Text("Software Development"),
                      ElevatedButton(onPressed: null, child: Text("Hire"))
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Tips extends StatelessWidget {
  const Tips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Mentor Tips"),
        ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => Stack(
            children: [
              Image.network(
                  "https://img.freepik.com/free-vector/gradient-abstract-background-design_23-2149066048.jpg?size=626&ext=jpg"),
              const Text("Hello World!")
            ],
          ),
        )
      ],
    );
  }
}
