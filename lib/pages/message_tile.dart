import "package:flutter/material.dart";
import "package:zutto_app/pages/message_detail.dart";

class MessageTile extends StatefulWidget {
  const MessageTile({super.key});

  @override
  State<MessageTile> createState() => _MessageTileState();
}

class _MessageTileState extends State<MessageTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MessageDetail(),
            ));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.blueGrey,
        ),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: const DecorationImage(
                    image: AssetImage('image/user.png'),
                    fit: BoxFit.cover)
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bucky Robert',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text(
                  'Hi, how are you?',
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                )
              ],
            )
          ],
        
        ),
      ),
    );
  }
}