import 'package:assistant/feature_box.dart';
import 'package:assistant/pallete.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KN Assistant'),
        centerTitle: true,
        leading: const Icon(Icons.menu),
      ),
      body: Column(
        children: [
          // image virtual assitant
          Stack(
            children: [
              Center(
                child: Container(
                  height: 90,
                  width: 120,
                  margin: const EdgeInsets.only(top: 4),
                  decoration: const BoxDecoration(
                      color: Pallete.assistantCircleColor,
                      shape: BoxShape.circle),
                ),
              ),
              Container(
                height: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/virtualAssistant.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
          //chat bubble
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(
              top: 15,
            ),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Pallete.borderColor,
                ),
                borderRadius: BorderRadius.circular(20).copyWith(
                  topLeft: Radius.zero,
                )),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Text(
                'Hi Khoi Nguyen, what task can I do for you?',
                style: TextStyle(
                  fontFamily: 'Cera Pro',
                  color: Pallete.mainFontColor,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(
              top: 10,
              left: 22,
            ),
            child: const Text(
              'Here are a few feature',
              style: TextStyle(
                fontFamily: 'Cere Pro',
                color: Pallete.mainFontColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //featrue list
          const Column(
            children: [
              FeatureBox(
                color: Pallete.firstSuggestionBoxColor,
                headerText: "Chat GPT",
                descriptionText:
                    'A smarter way to organized and informed with Chat GPT',
              ),
              FeatureBox(
                color: Pallete.secondSuggestionBoxColor,
                headerText: "Dall-E",
                descriptionText:
                    'Get inspired and stay creative with personal powered by Dall-E',
              ),
              FeatureBox(
                color: Pallete.thirdSuggestionBoxColor,
                headerText: "Smart Voice",
                descriptionText:
                    'Get the best of both worlds with a voice assistant powered',
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Pallete.firstSuggestionBoxColor,
        onPressed: () {},
        child: const Icon(Icons.mic),
      ),
    );
  }
}
