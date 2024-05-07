import "package:flutter/material.dart";
import "package:zutto_app/pages/post_page.dart";

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        // automaticallyImplyLeading: false,
      ),
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Column(
                    children: [
                      Image.asset('image/user.png', height: 110,),
                      const Text('Anna Adams')
                    ],
                  ),
                ),
                const ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                ),
                const ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
              ],
            ),
            const ListTile(
              leading: Icon(Icons.logout),
              title: Text('logout'),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: const DecorationImage(
                          image: AssetImage('image/user.png'),
                          fit: BoxFit.cover)),
                ),
                const Column(
                  children: [
                    Text(
                      "Anne Adams",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('@anne.adams99'),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      '2k',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Following')
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '25k',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Followers')
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '162',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Posts')
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15.0)),
                    padding: const EdgeInsets.all(9.0),
                    width: 150,
                    child: const Center(
                      child: Text(
                        "Follow",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15.0)),
                    padding: const EdgeInsets.all(9.0),
                    width: 150,
                    child: const Center(
                      child: Text(
                        "Message",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Post', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Photos', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Likes', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Favourites',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return const PostPage();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
