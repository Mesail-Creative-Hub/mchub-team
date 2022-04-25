import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: const BoxConstraints(),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://miro.medium.com/fit/c/176/176/1*Us-tll_61uzjO2bJVYRr6Q.png",
                      ),
                    ),
                    Column(
                      children: const [
                        Text("Good Morning"),
                        Text("Mesail Creative Hub")
                      ],
                    ),
                    const Icon(Icons.notifications)
                  ],
                ),
              ),
              Expanded(
                  child: Column(
                children: [
                  Row(
                    children: [
                      const TextField(
                        // controller: ,
                        decoration: InputDecoration(
                          labelText: "Find your favorite mentor",
                          hintText: "Search",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.blue,
                        child: const Icon(Icons.search),
                      ),
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
