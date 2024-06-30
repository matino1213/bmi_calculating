import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bmi_calculating/constants.dart';
import 'package:bmi_calculating/screens/result_screen.dart';
import 'package:bmi_calculating/widgets/base_widget.dart';
import 'package:flutter/material.dart';

class CalculateScreen extends StatefulWidget {
  const CalculateScreen({super.key});

  @override
  State<CalculateScreen> createState() => _CalculateScreenState();
}

class _CalculateScreenState extends State<CalculateScreen> {
  TextEditingController weightController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  double heightValue = 150.0;
  bool gender = true;

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
                'BMI Calculator',
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
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  isGenderPressed(true);
                },
                child: Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 5, color: gender ? dColorBlue : Colors.white),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    boxShadow: const [
                      BoxShadow(color: Colors.black38, blurRadius: 20),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 70,
                        height: 70,
                        child: Image(
                          image: AssetImage('assets/images/male.png'),
                        ),
                      ),
                      Text(
                        'Male',
                        style: TextStyle(fontSize: 25, color: dColorBlue),
                      )
                    ],
                  ),
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  isGenderPressed(false);
                },
                child: Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 5, color: gender ? Colors.white : dColorBlue),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    boxShadow: const [
                      BoxShadow(color: Colors.black38, blurRadius: 20),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 70,
                        height: 70,
                        child: Image(
                          image: AssetImage('assets/images/female.png'),
                        ),
                      ),
                      Text(
                        'Female',
                        style: TextStyle(fontSize: 25, color: dColorBlue),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            height: 200,
            width: MediaQuery.of(context).size.width - 60,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(color: Colors.black38, blurRadius: 20),
              ],
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Height(cm)',
                  style: TextStyle(fontSize: 25, color: dColorBlue),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  heightValue.round().toString(),
                  style: TextStyle(color: dColorBlue, fontSize: 50),
                ),
                const SizedBox(
                  height: 5,
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    inactiveTickMarkColor: Colors.grey,
                    activeTrackColor: dColorBlue,
                    thumbColor: kColorBlue,
                  ),
                  child: Slider(
                    value: heightValue,
                    onChanged: (double value) {
                      setState(() {
                        heightValue = value;
                      });
                    },
                    max: 220.0,
                    min: 100.0,
                    label: heightValue.toString(),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Container(
                height: 200,
                width: 160,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(color: Colors.black38, blurRadius: 20),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Weight(kg)',
                      style: TextStyle(fontSize: 25, color: dColorBlue),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          width: 100,
                          height: 150,
                          child: TextField(
                            controller: weightController,
                            keyboardType: TextInputType.number,
                            style: TextStyle(color: dColorBlue, fontSize: 50),
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(borderSide: BorderSide.none)),
                          ),
                        ),
                        Positioned(
                            bottom: 62,
                            child: Container(
                              height: 5,
                              width: 110,
                              decoration: BoxDecoration(
                                color: dColorBlue,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                height: 200,
                width: 160,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(color: Colors.black38, blurRadius: 20),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Age',
                      style: TextStyle(fontSize: 25, color: dColorBlue),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          width: 100,
                          height: 150,
                          child: TextField(
                            controller: ageController,
                            keyboardType: TextInputType.number,
                            style: TextStyle(color: dColorBlue, fontSize: 50),
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                                border: UnderlineInputBorder(borderSide: BorderSide.none)),
                          ),
                        ),
                        Positioned(
                            bottom: 62,
                            child: Container(
                              height: 5,
                              width: 110,
                              decoration: BoxDecoration(
                                color: dColorBlue,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // const Spacer(),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 140,
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
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                  color: dColorBlue,
                  child: InkWell(
                    onTap: () {
                      onBmiPressed();
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
                          child: Text(
                        'BMI',
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
    );
  }

  void isGenderPressed(bool x) {
    setState(() {
      gender = x;
    });
  }

  void onBmiPressed() {
    double bmi;
    if (weightController.text == '') {
      AwesomeDialog(
        context: context,
        animType: AnimType.scale,
        dialogType: DialogType.error,
        headerAnimationLoop: false,
        body: const Center(child: Text(
        'Please enter your weight.',
          style: TextStyle(fontSize: 20),
        ),),
        title: 'Error',
        desc:   '',
        btnOkOnPress: () {},
      ).show();
    } //
    else if(ageController.text == ''){
      AwesomeDialog(
        context: context,
        animType: AnimType.scale,
        dialogType: DialogType.error,
        headerAnimationLoop: false,
        body: const Center(child: Text(
          'Please enter your age.',
          style: TextStyle(fontSize: 20),
        ),),
        title: 'Error',
        desc:   '',
        btnOkOnPress: () {},
      ).show();
    }
    else {
      bmi =
          int.parse(weightController.text) / ((heightValue.round() / 100) * 2);
      bmi = bmi * 10;
      int b = bmi.round();
      bmi = b / 10;
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => resultScreen(
                    bmi: bmi,
                    weight: int.parse(weightController.text),
                    height: heightValue.round(),
                  )));
      ageController = '' as TextEditingController;
      weightController = '' as TextEditingController;
      heightValue = 150;
    }
  }
}
