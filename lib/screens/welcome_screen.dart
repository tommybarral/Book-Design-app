import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);


  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  final int _selectedIndex = 0;

  final List<String> _greetings =  [
    'https://www.signaleco.fr/3086-large_default/nom-de-maison-welcome-aluminium.jpg',
    'https://image.winudf.com/v2/image1/Y29tLmFqaW5mby53bG9zX3NjcmVlbl84XzE2Mjk2OTEyMTdfMDE4/screen-8.jpg?fakeurl=1&type=.jpg',
    'https://www.creativefabrica.com/wp-content/uploads/2020/09/23/WELCOME-Graphics-5632158-1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                SizedBox(
                  height: 300,
                  width: double.infinity,
                    child: PageView.builder(
                        itemCount: _greetings.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Image.network(
                              _greetings[index],
                              fit: BoxFit.cover,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(_greetings.length, (indexDots) {
                                  return Container(
                                    height: 8,
                                    width: index == indexDots ? 32 : 8,
                                    margin: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: index == indexDots ? Colors.blue : Colors.grey,
                                    ),
                                  );
                                }),
                              ),
                            ],
                          );
                        })
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Padding(
                  padding: EdgeInsets.all(25),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sed leo odio. Etiam gravida iaculis mauris eu sagittis. Donec vel ullamcorper tortor.',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1.2,
                        color: Colors.white),
                    maxLines: 5,
                    softWrap: true,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: RaisedButton(
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                        return const HomeScreen();
                      }));
                    },
                    child: const Text('Get Started', style: TextStyle(fontSize: 25),),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
