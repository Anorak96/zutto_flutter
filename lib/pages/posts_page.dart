import "package:flutter/material.dart";
import "package:zutto_app/pages/post_page.dart";

class Postspage extends StatefulWidget {
  const Postspage({super.key});

  @override
  State<Postspage> createState() => _PostspageState();
}

class _PostspageState extends State<Postspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Builder(
        //   builder: (context) => IconButton(
        //     onPressed: () {
        //       Scaffold.of(context).openDrawer();
        //     }, 
        //     icon: const Icon(Icons.menu)
        //   ),
        // ),
        title: const Text(
          "Zutto",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      endDrawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(child: Text('Zutto')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            )
          ],
        ),
      ),
      body: Column(
        children: [
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        hoverColor: Colors.green[300],
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ), 
    );
  }
}
