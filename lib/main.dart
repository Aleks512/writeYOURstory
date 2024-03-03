import 'package:flutter/material.dart';
import 'package:write_your_story/story_brain.dart';

void main() => runApp(const Destini());

class Destini extends StatelessWidget {
  const Destini({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const StoryPage(),
    );
  }
}

//Create a new storyBrain object from the StoryBrain class.
StoryBrain my_story = StoryBrain();

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "images/bg_page.png"),
                fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    my_story.getStory(),//use the storyBrain to get the first story title and display it in this Text Widget.
                    style: const TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      my_story.nextStory(1); //Choice 1 made by user.
                    });
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(100, 131, 33, 144)),
                  child: Text(
                    my_story.getChoice1(), //Use the storyBrain to get the text for choice 1.
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: my_story.buttonShouldBeVisible(),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        my_story.nextStory(2);//Call the nextStory() method from storyBrain and pass the number 2 as the choice made by the user.
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color.fromARGB(100, 33, 47, 243)),
                      padding: MaterialStateProperty.all(const EdgeInsets.all(20)), alignment: Alignment.center,
                    ),
                    child: Text(
                      my_story.getChoice2(),//Use the storyBrain to get the text for choice 2.
                      style: const TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}