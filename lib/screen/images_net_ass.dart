import 'package:flutter/material.dart';

class MyImages extends StatelessWidget {
  const MyImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade500,
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("Images assets and network"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //! assetsdan images olish
          Expanded(
            child: Container(
              height: 150,
              width: 100,
              color: Colors.green,
              child: Column(children: [
                Image.asset("assets/images/img.jpg"),
                const Text(
                  "Images from assets",
                )
              ]),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          //! Internetdan images olish
          Expanded(
            child: Container(
              height: 150,
              width: 100,
              color: Colors.green,
              child: Column(children: [
                Image.network(
                    "https://images.unsplash.com/photo-1664975154056-7369ad5ed779?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1M3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
                const Text(
                  "Images from Network",
                )
              ]),
            ),
          ),
          //! Aylana rasm internet or assets
          const Expanded(
            child: CircleAvatar(
              radius: 55,
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1665049420194-8f562db50cbd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
            ),
          )
        ],
      ),
    );
  }
}
