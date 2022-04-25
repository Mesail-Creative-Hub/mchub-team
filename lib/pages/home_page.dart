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
              const Header(),
              const TeamMember(),
            ],
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
              "https://miro.medium.com/fit/c/176/176/1*Us-tll_61uzjO2bJVYRr6Q.png",
            ),
          ),
          Column(
            children: const [Text("Good Morning"), Text("Mesail Creative Hub")],
          ),
          const Icon(Icons.notifications)
        ],
      ),
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
    _tabCtrl = TabController(initialIndex: 1, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              TextField(
                controller: _searchCtrl,
                decoration: const InputDecoration(
                  labelText: "Find your favorite mentor",
                  hintText: "Search",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: const Icon(Icons.search),
              ),
            ],
          ),
          TabBar(
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
          Column(
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
          )
        ],
      ),
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
              Image.network("https://img.freepik.com/free-vector/gradient-abstract-background-design_23-2149066048.jpg?size=626&ext=jpg"),
              const Text("Hello World!")
            ],
          ),
          )
      ],
    );
  }
}