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
                              height: MediaQuery.of(context).size.height < 550 ? 145 : 250, // 230
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
                                height: MediaQuery.of(context).size.height < 550 ? 165 : 250, //250
                                width: MediaQuery.of(context).size.width < 340 ? 100 : 170, //170
                                //margin: const EdgeInsets.all(10),
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
                                      height: MediaQuery.of(context).size.height < 550 ? 30 : 70,
                                      width: MediaQuery.of(context).size.height < 340 ? 120 : 165,
                                      child: MediaQuery.of(context).size.height < 550 ? FittedBox(
                                        child: Text(
                                          loadedBookData[index].title,
                                          style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ) : Text(
                                        loadedBookData[index].title,
                                        style: const TextStyle(
                                            fontSize: 26,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height < 550 ? 20 : 70,
                                      width: MediaQuery.of(context).size.height < 340 ? 120 : 165,
                                        child: MediaQuery.of(context).size.height < 550 ? FittedBox(
                                          child: Text(
                                            'author: ${loadedBookData[index].author}',
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.blue,
                                            ),
                                          ),
                                        ) : Text(
                                          'author: ${loadedBookData[index].author}',
                                          style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.blue,
                                          ),
                                        ),),
                                    Container(
                                      height: 2,
                                      width: MediaQuery.of(context).size.width < 330 ? 145 : 175,
                                      margin: const EdgeInsets.only(top: 5, bottom: 10),
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    SizedBox(
                                      height: MediaQuery.of(context).size.height < 550 ? 55 : 75,
                                      width: MediaQuery.of(context).size.height < 340 ? 120 : 165,
                                      child: MediaQuery.of(context).size.height < 550 ? Text(
                                        loadedBookData[index].description,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey,
                                        ),
                                      ) : Text(
                                        loadedBookData[index].description,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
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
