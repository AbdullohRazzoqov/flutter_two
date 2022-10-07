import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.blueAccent,
            image: DecorationImage(
                image: NetworkImage("https://source.unsplash.com/random"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(70.0),
            ),
          ),
          height: 300,
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
    //! Widgetning kesish uchun o'rashimiz mumkin
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.network(
                  "https://source.unsplash.com/2",
                  fit: BoxFit.cover,
                ),
              ),
            ),
    //! Internetdan rasm kelguncha loading gif aylanib turadi
                SizedBox(
                  width: 100,
                  height: 100,
                  child: FadeInImage.assetNetwork(
                      fit: BoxFit.cover,
                      placeholder: "assets/images/load.gif",
                      image: "https://source.unsplash.com/random/1"),
                ),

    //! Widgetlarni taxminal joylashuvini tuzub olsa bo'ladi
                const Placeholder(
                  fallbackHeight: 100,
                  fallbackWidth: 100,
              
            )
          ],
        )
      ]),
    );
  }
}
