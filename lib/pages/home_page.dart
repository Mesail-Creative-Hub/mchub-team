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
                padding: const EdgeInsets.symmetric(horizontal: 10).add(
                  const EdgeInsets.only(top: 20),
                ),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: const TeamMember(),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10).add(
                  const EdgeInsets.only(top: 20),
                ),
                height: 200,
                color: whiteColor,
                child: const Tips(),
              )
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
    _tabCtrl = TabController(
      initialIndex: 0,
      length: 6,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabCtrl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 70,
          child: Row(
            children: [
              Expanded(
                flex: 9,
                child: TextField(
                  controller: _searchCtrl,
                  decoration: const InputDecoration(
                    labelText: "Find your favorite mentor",
                    hintText: "Search",
                    isDense: true,
                    contentPadding: EdgeInsets.all(12),
                    border: OutlineInputBorder(
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
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      color: whiteColor,
                      icon: const Icon(
                        Icons.search,
                        size: 30,
                      ),
                    ),
                  )),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 10),
          height: 50,
          child: TabBar(
            indicator: ShapeDecoration(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                color: blueColor),
            isScrollable: true,
            controller: _tabCtrl,
            labelStyle: textStyle(Colors.white, textMd, textRegular),
            unselectedLabelColor: Colors.black,
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
        Container(
          padding: const EdgeInsets.only(top: 20),
          height: 315,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  "Top Mentor",
                  style: textStyle(Colors.black, textLg, textBold),
                ),
              ),
              Expanded(
                flex: 7,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => Container(
                    width: (MediaQuery.of(context).size.width - 40) / 2,
                    height: 200,
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: greyColor.withOpacity(
                        0.1,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/picture.png"),
                          radius: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Mulia Firmansyah Arief",
                            textAlign: TextAlign.center,
                            style: textStyle(Colors.black, textMd, textBold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Software Development",
                            textAlign: TextAlign.center,
                            style: textStyle(greyColor, textSm, textRegular),
                          ),
                        ),
                        FractionallySizedBox(
                          widthFactor: .7,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: blueColor,
                            ),
                            onPressed: () {},
                            child: const Text("Hire"),
                          ),
                        )
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            "Mentor Tips",
            style: textStyle(Colors.black, textLg, textBold),
          ),
        ),
        Expanded(
          flex: 8,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              width: MediaQuery.of(context).size.width * .7,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    child: Image.network(
                      "https://img.freepik.com/free-vector/gradient-abstract-background-design_23-2149066048.jpg?size=626&ext=jpg",
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Hello World!",
                        style: textStyle(whiteColor, textLg, textBold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
