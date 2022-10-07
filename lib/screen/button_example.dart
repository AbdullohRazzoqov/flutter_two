import 'package:flutter/material.dart';

class MyButtonPage extends StatelessWidget {
  const MyButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Center(
          child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.4,),
          ElevatedButton(
            //! onLongPress bosib turish
            onLongPress: (){},
            //! onPressed bitta bosish
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
            child:const  Text("ElecatedButton"),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(backgroundColor: Colors.green),
            child: const Text("TextButton"),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(backgroundColor: Colors.indigo),
            child: const Text("OutlinedButton"),
          ),
           OutlinedButton(
            onPressed: () {},
            child: const Text("OutlinedButton"),
          ),
          IconButton(onPressed: (){}, icon:const Icon(Icons.person))
        ],
      )),
    );
  }
}
