import "package:flutter/material.dart";
import "package:zutto_app/pages/post_detail.dart";
import "package:zutto_app/pages/profile_page.dart";

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 10, left: 5, right: 5),
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.black12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfilePage(),
                        ));
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: const DecorationImage(
                        image: AssetImage('image/user.png'),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfilePage(),
                            ));
                      },
                      child: const Text(
                        'Anne Adams',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Text('12 Apr, 2022 12:21',
                        style: TextStyle(fontWeight: FontWeight.w200)),
                  ],
                ),
              ],
            ),
          ),

          // Caption
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PostDetail(),
                  ));
            },
            child: const Text(
              'Caption',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),

          const SizedBox(height: 10),
          
          // POst Image
          GestureDetector(
            onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PostDetail(),
                    ));
              },
            child: Image.asset('image/post2.jpg')
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}