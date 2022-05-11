import 'package:book_design_app/models/book_data.dart';
import 'package:book_design_app/screens/book_details_screen.dart';
import 'package:book_design_app/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import '../screens/welcome_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    final loadedBookData = Provider.of<BookData>(context).bookItems;
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
          IconButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (_) { return const SignInScreen();}));}, icon: const Icon(Icons.person_outline, color: Colors.black,),),
        ],
      ),
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: ListView.builder(
              itemCount: loadedBookData.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(BookDetailsScreen.routeName, arguments: loadedBookData[index].id);
                  },
                  child: Padding(
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
                                    BoxShadow(color: Colors.grey.shade400, offset: const Offset(4, 4), blurRadius: 6),
                                    BoxShadow(color: Colors.grey.shade400, offset: const Offset(-4, -4), blurRadius: 6),
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
                                    boxShadow: [
                                      BoxShadow(color: Colors.grey.shade400, offset: const Offset(4, 4), blurRadius: 6),
                                      BoxShadow(color: Colors.grey.shade400, offset: const Offset(-4, -4), blurRadius: 5),
                                    ],
                                    image: DecorationImage(
                                      image: NetworkImage(loadedBookData[index].imageUrl),
                                      fit: BoxFit.cover,
                                    ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 50),
                                      height: 50,
                                      width: 120,
                                      child: Text(
                                        loadedBookData[index].title,
                                        style: const TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        height: 50,
                                        width: 130,
                                        margin: const EdgeInsets.only(top: 10),
                                        child: Text('Author: ${loadedBookData[index].author}', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),)),
                                    Container(
                                      height: 2,
                                      width: 175,
                                      margin: const EdgeInsets.only(top: 5, bottom: 10),
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      height: 55,
                                      width: 125,
                                      child: Text(
                                        loadedBookData[index].description,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
