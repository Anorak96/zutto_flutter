import "package:flutter/material.dart";

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 0),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Search",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.search),
                ],
              ),
              
              const Divider(
                color: Colors.grey,
              ),
              
              Row(
                children: [
                  const Row(
                    children: [
                      Icon(Icons.photo_album, color: Colors.blue),
                      Icon(Icons.video_camera_back, color: Colors.blue)
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5.0)),
                    padding: const EdgeInsets.all(8.0),
                    child: const Center(
                      child: Text(
                        "Share",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
   }
}
