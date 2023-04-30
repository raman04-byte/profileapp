import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final double coverHeight = 140;
  final double profileHeight = 144;
  @override
  Widget build(BuildContext context) {
    final top = coverHeight - profileHeight / 2;
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              color: const Color.fromARGB(255, 175, 117, 113),
              child: Column(children: [
                Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        buildColorImage(),
                        Positioned(
                          top: top,
                          child: buildProfileImage(),
                        )
                      ],
                    )
                  ],
                )
              ]),
            ),
            const SizedBox(
              height: 70,
            ),
            fonts("My Contact"),
            divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.mail_outline_rounded),
                SizedBox(
                  width: 15,
                ),
                Text("ramantank04@gmail.com")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.call),
                SizedBox(
                  width: 15,
                ),
                Text("+91-0000000000")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.add_location_alt_rounded),
                SizedBox(
                  width: 15,
                ),
                Text("Jaipur, Rajasthan")
              ],
            ),
            divider(),
            fonts("Soft Skills"),
            divider(),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Text("• "), Text("data")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Text("• "), Text("data")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Text("• "), Text("data")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Text("• "), Text("data")],
                ),
              ],
            ),
            divider(),
            fonts("Hard Skills"),
            divider(),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Text("• "), Text("data")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Text("• "), Text("data")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Text("• "), Text("data")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Text("• "), Text("data")],
                ),
              ],
            ),
            divider(),
            fonts("Education"),
            divider(),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "• ",
                      style: TextStyle(fontSize: 40),
                    ),
                    Column(
                      children: const [
                        Text("data"),
                        Text(
                          "data",
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "• ",
                      style: TextStyle(fontSize: 40),
                    ),
                    Column(
                      children: const [
                        Text("data"),
                        Text(
                          "data",
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "• ",
                      style: TextStyle(fontSize: 40),
                    ),
                    Column(
                      children: const [
                        Text("data"),
                        Text(
                          "data",
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            )
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          
          items: const <BottomNavigationBarItem>[
            
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Calls',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail_outlined),
              label: 'Mail',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_page_sharp),
              label: 'Profile',
            ),
          ],
        ));
  }

  Widget divider() => const Divider(
        color: Color.fromARGB(255, 176, 117, 113),
        thickness: 2,
        indent: 60,
        endIndent: 60,
      );

  Widget fonts(String text) => Text(
        text,
        style: const TextStyle(
            color: Color.fromRGBO(148, 38, 55, 1),
            fontSize: 40,
            fontWeight: FontWeight.bold),
      );

  Widget buildProfileImage() => CircleAvatar(
      radius: profileHeight / 2,
      backgroundColor: Colors.grey.shade800,
      backgroundImage: const NetworkImage(
          "https://images.pexels.com/photos/47359/squirrel-wildlife-nature-animal-47359.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"));

  Widget buildColorImage() => Container(
        height: coverHeight,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [.1, .4, .6, .9],
            colors: [
              Colors.yellow,
              Colors.redAccent,
              Colors.indigo,
              Colors.teal
            ],
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.fromLTRB(140, 40, 0, 0),
          child: Text(
            "Your name",
            style: TextStyle(fontSize: 15),
          ),
        ),
      );
}
