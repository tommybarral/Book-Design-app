import 'package:book_design_app/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import '../screens/welcome_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_) { return const WelcomeScreen();}));
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black,),
        ),
        actions: [
          IconButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (_) { return SignInScreen();}));}, icon: const Icon(Icons.person_outline, color: Colors.black,),),
        ],
      ),
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Container(
                            height: 230,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(color: Colors.grey.shade400, offset: const Offset(4, 4), blurRadius: 5),
                                  BoxShadow(color: Colors.grey.shade400, offset: const Offset(-4, -4), blurRadius: 5),
                                ]
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 250,
                              width: 170,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: const DecorationImage(
                                  image: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/615ZIxEDozL.jpg'),
                                  fit: BoxFit.cover,
                                )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('6 books', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.grey),),
                                  const Text('Author: Stephenie Meyer', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),),
                                  Container(
                                    height: 2,
                                    width: 175,
                                    margin: EdgeInsets.only(top: 25, bottom: 25),
                                    color: Colors.grey,
                                  ),
                                  const Text('Based on the famous \nlove story between a kid \nand a grandpa.', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: Colors.grey),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                );
              }),
        ),
      ),
    );
  }
}
