//TODO: Step 6 - done import the story.dart file into this file.
import 'story.dart';

//TODO: Step 5 - done Create a new class called StoryBrain.
class StoryBrain {
//TODO: Step 7 - done Uncomment the lines below to include storyData as a private property in StoryBrain. Hint: You might need to change something in story.dart to make this work.

List<Story> _storyData = [
  Story(
      storyTitle:
          'Votre voiture a crevé un pneu sur une route sinueuse au milieu de nulle part sans réception de téléphone portable. Vous décidez de faire du stop. Un vieux pick-up rouillé s\'arrête à côté de vous. Un homme avec un large chapeau à larges bords et des yeux sans âme ouvre la porte du passager pour vous et demande : "Besoin d\'un lift, garçon ?".',
      choice1: 'Je monte. Merci pour l\'aide !',
      choice2: 'Mieux vaut lui demander d\'abord s\'il est un meurtrier.'),
  Story(
      storyTitle: 'Il acquiesce lentement, non perturbé par la question.',
      choice1: 'Au moins, il est honnête. Je monte.',
      choice2: 'Attends, je sais changer un pneu.'),
  Story(
      storyTitle:
          'Alors que vous commencez à conduire, l\'étranger commence à parler de sa relation avec sa mère. Il devient de plus en plus en colère à chaque minute. Il vous demande d\'ouvrir la boîte à gants. À l\'intérieur, vous trouvez un couteau ensanglanté, deux doigts coupés, et une cassette d\'Elton John. Il tend la main vers la boîte à gants.',
      choice1: 'J\'adore Elton John ! Donne-lui la cassette.',
      choice2: 'C\'est lui ou moi ! Tu prends le couteau et le poignardes.'),
  Story(
      storyTitle:
          'Quoi ? Quelle échappatoire ! Saviez-vous que les accidents de la route sont la deuxième cause principale de décès accidentel pour la plupart des groupes d\'âge adultes ?',
      choice1: 'Recommencer',
      choice2: ''),
  Story(
      storyTitle:
          'Alors que vous fracassez la glissière de sécurité et que vous vous dirigez vers les rochers pointus en contrebas, vous réfléchissez à la sagesse douteuse de poignarder quelqu\'un pendant qu\'il conduit une voiture dans laquelle vous vous trouvez.',
      choice1: 'Recommencer',
      choice2: ''),
  Story(
      storyTitle:
          'Vous vous liez d\'amitié avec le meurtrier en chantonnant des vers de "Can you feel the love tonight". Il vous dépose à la prochaine ville. Avant de partir, il vous demande si vous connaissez de bons endroits pour déposer des corps. Vous répondez : "Essaie le quai".',
      choice1: 'Recommencer',
      choice2: '')
];


//TODO: Step 23 - Use the storyNumber property inside getStory(), getChoice1() and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.

//TODO: Step 8 - Create a method called getStory() that returns the first storyTitle from _storyData.
  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

//TODO: Step 11 - done Create a method called getChoice1() that returns the text for the first choice1 from _storyData.
  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

//TODO: Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.
  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }
//TODO: Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.

//TODO: Step 16 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.
  int _storyNumber = 0;
//TODO: Step 17 - done Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.
  //TODO: Step 20 - done Download the story plan here: https://drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3
  void nextStory(int choiceNumber) {
//TODO: Step 21 - Using the story plan, update nextStory() to change the storyNumber depending on the choice made by the user. e.g. if choiceNumber was equal to 1 and the storyNumber is 0, the storyNumber should become 2.
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    }
    //TODO: Step 22 - done In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.
    else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }    
  }

//TODO: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.

