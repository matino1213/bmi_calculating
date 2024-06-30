import 'package:bmi_calculating/widgets/base_widget.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

// ignore: camel_case_types
class resultScreen extends StatelessWidget {
  const resultScreen(
      {super.key,
      required this.bmi,
      required this.weight,
      required this.height});

  final double bmi;
  final int weight;
  final int height;

  @override
  Widget build(BuildContext context) {
    return baseWidget(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Text(
                'Result',
                style: TextStyle(
                    fontSize: 20,
                    color: dColorBlue,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 140,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 20)],
                ),
                child: Center(
                  child: Text(
                    'Weight',
                    style: TextStyle(color: dColorBlue, fontSize: 20),
                  ),
                ),
              ),
              const Spacer(),
              Text(
                weight.toString(),
                style: const TextStyle(fontSize: 35),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 140,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 20)],
                ),
                child: Center(
                  child: Text(
                    'Height',
                    style: TextStyle(color: dColorBlue, fontSize: 20),
                  ),
                ),
              ),
              const Spacer(),
              Text(
                height.toString(),
                style: const TextStyle(fontSize: 35),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 600,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 560,
                  decoration: BoxDecoration(
                      color: kColorBlue,
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(30))),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      Container(
                        height: 200,
                        width: 350,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    bmi.toString(),
                                    style: TextStyle(
                                        color: dColorBlue,
                                        fontSize: 70,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'BMI',
                                        style: TextStyle(
                                            color: kColorBlue, fontSize: 40),
                                      ),
                                      Text(
                                        bmiStatus(),
                                        style: TextStyle(
                                            color: dColorBlue, fontSize: 25),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Underweight',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  Text(
                                    'Normal',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                  Text(
                                    'Overweight',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                              Container(
                                height: 10,
                                width: 310,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.blue,
                                      Colors.green,
                                      Colors.red,
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '16.0',
                                    style: TextStyle(color: dColorBlue),
                                  ),
                                  Text(
                                    '18.5',
                                    style: TextStyle(color: dColorBlue),
                                  ),
                                  Text(
                                    '25.0',
                                    style: TextStyle(color: dColorBlue),
                                  ),
                                  Text(
                                    '40.0',
                                    style: TextStyle(color: dColorBlue),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                child: Material(
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                  color: dColorBlue,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                    child: Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 10,
                              color: Colors.white,
                              style: BorderStyle.solid)),
                      child: const Center(
                          child: Icon(
                        Icons.refresh,
                        size: 50,
                        color: Colors.white,
                      )),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  String bmiStatus(){
    if(bmi <= 18.5){
      return 'Underweight';
    }//
    else if(bmi <= 25.0){
      return 'Normal';
    }//
    else{
      return 'Overweight';
    }
  }

}
