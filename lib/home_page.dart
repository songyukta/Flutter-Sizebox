import 'package:flutter/material.dart';

//stl,stf

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  mySanckBar(msg, context) {
    return ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),

        //style: TextStyle(color: Colors.white),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              mySanckBar("Search", context);
            },
            icon: Icon(Icons.search),
          ), //onpressed means (net feature)
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        foregroundColor: Colors.tealAccent,
        child: Icon(Icons.add),
      ),

      body: Column(
        children: [
          Container(
            //color: Colors.deepOrangeAccent,
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            height: 500,
            width: 300,
            alignment: Alignment.topRight,
            padding: EdgeInsets.all(20),
            //margin: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(20, 50, 10, 5),
            child: Column(children: [Image.asset("assets/images/me.jpg")]),
          ),

          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              "Somewhere, something incredible is waiting to be known",
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
