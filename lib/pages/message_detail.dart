import "package:flutter/material.dart";

class MessageDetail extends StatefulWidget {
  const MessageDetail({super.key});

  @override
  State<MessageDetail> createState() => _MessageDetailState();
}

class _MessageDetailState extends State<MessageDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: const DecorationImage(
                    image: AssetImage('image/user.png'),
                    fit: BoxFit.cover
                )
              )
            ),
            const SizedBox(width: 10.0),
            const Text('Bucky Robert')
          ],
        ),
        actions: const [
          Icon(Icons.phone)
        ],
      ),
      
    );
  }
}