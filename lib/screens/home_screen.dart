import 'package:bmi_calculating/constants.dart';
import 'package:bmi_calculating/screens/calculate_screen.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: 0,
                      child: Text(
                        'BMI',
                        style: TextStyle(
                            fontSize: 150,
                            fontWeight: FontWeight.bold,
                            color: dColorBlue),
                      ),
                    ),
                    Positioned(
                      top: 140,
                      child: Text(
                        'Calculator',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: dColorBlue),
                      ),
                    ),
                    Positioned(
                      top: 195,
                      child: Text(
                        'How healthy are you?',
                        style: TextStyle(color: dColorBlue, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 7,
              ),
// const Spacer(),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        decoration: BoxDecoration(
                            color: kColorBlue,
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(30))),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      child: Material(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                        color: dColorBlue,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const CalculateScreen(),
                                ));
                          },
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100)),
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 10,
                                    color: Colors.white,
                                    style: BorderStyle.solid)),
                            child: const Center(
                                child: Text(
                              'Let`s Go!',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 22),
                            )),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
