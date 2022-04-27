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
                height: MediaQuery.of(context).size.height * .2,
                child: const Header(),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                height: MediaQuery.of(context).size.height * 1,
                child: const TeamMember(),
              ),
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
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(
                flex: 9,
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
                    height: double.infinity,
                    margin: const EdgeInsets.symmetric(
                        vertical: 17, horizontal: 10),
                    decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      color: whiteColor,
                      icon: const Icon(Icons.search),
                    ),
                  )),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: TabBar(
            isScrollable: true,
            controller: _tabCtrl,
            labelColor: Colors.black,
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
          flex: 4,
          child: Column(
            children: [
              const Expanded(
                flex: 3,
                child: Text("Top Mentor"),
              ),
              Expanded(
                flex: 7,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => SizedBox(
                    width: MediaQuery.of(context).size.height * .3,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/picture.png"),
                        ),
                        Text("Mulia Firmansyah Arief"),
                        Text("Software Development"),
                        ElevatedButton(onPressed: null, child: Text("Hire"))
                      ],
                    ),
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
