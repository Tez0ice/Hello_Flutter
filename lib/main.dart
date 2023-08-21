import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var nameEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: Text("Hello World"),
          backgroundColor: Colors.blueGrey,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Column(
                  children: [
                    Text(
              "Welcome to my app",
              style: GoogleFonts.publicSans(textStyle: TextStyle(color: Colors.lightGreenAccent, fontSize: 32)),
            ),
                    Text("Deez Wut??"),
                    Text("The greatest flutter of all time"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("This is left"),
                        SizedBox(width:8,),
                        Text("This is right"),
                      ],
                    ),
                    TextField(decoration:InputDecoration(hintText: "Enter Nama Your"),
                    controller: nameEditingController,),
                    Image.network("https://wallpaper.dog/large/17152.jpg"),
                    Image.asset("images/goku.jpg"),
                    Image.network("https://i0.wp.com/wallpaperforu.com/wp-content/uploads/2021/04/Retro-Anime-Aesthetic-Desktop-Wallpapers3.jpg"),
                    Image.network("https://pbs.twimg.com/profile_images/1354794025551884292/ct2XxMBf_400x400.jpg"),
                    TextButton(onPressed:(){
                      Fluttertoast.showToast(
                          msg: "hElLo ${nameEditingController.text}!! Welcome to the greatest App of all history",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    },child:Text('Below Row')),
                  ]
                )),
          ),
        ));
  }
}
