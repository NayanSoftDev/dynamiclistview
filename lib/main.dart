import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.amber),
      color: Colors.blue,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatefulWidget {
  HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  var MyItems=[
    {"img":"https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg","title":"Cat"},
    {"img":"https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg","title":"Cat"},
    {"img":"https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg","title":"Cat"},
    {"img":"https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg","title":"Cat"},
    {"img":"https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg","title":"Cat"},
    {"img":"https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg","title":"Cat"},
    {"img":"https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg","title":"Cat"}
  ];

  mySnackBar(context,msg){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          centerTitle: true,
          toolbarHeight: 60,
          elevation: 50,
          backgroundColor: Colors.amber,

        ),

        body: ListView.builder(
          itemCount: MyItems.length,
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){mySnackBar(context,MyItems[index]['title']);},
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 200,
                child: Image.network(MyItems[index]["img"]!,fit: BoxFit.fill,),
              ),
            );
          },
        )



    );
  }
}