import 'package:bottom_navigation_app/models/user.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.unread,
  });
}

// ME - current user
final User currentUser = User(
  id: 0,
  name: 'Willy Ngugi',
  imageUrl: 'assets/mylogo.png',
);

// MALE USERS
final User liam = User(
  id: 1,
  name: 'Liam',
  imageUrl: 'https://pixabay.com/photos/beard-face-man-model-mustache-1845166/',
);
final User noah = User(
  id: 2,
  name: 'Noah',
  imageUrl: 'https://pixabay.com/photos/man-model-portrait-pose-style-7428290/',
);
final User oliver = User(
  id: 3,
  name: 'Oliver',
  imageUrl:
      'https://pixabay.com/photos/man-coffee-outdoors-lake-lakeside-3803551/',
);
final User james = User(
  id: 4,
  name: 'James',
  imageUrl:
      'https://pixabay.com/photos/entrepreneur-start-up-man-planning-593358/',
);
final User mohammed = User(
  id: 5,
  name: 'Mohammed',
  imageUrl:
      'https://pixabay.com/photos/boy-teenager-portrait-standing-1284509/',
);

//FEMALE USERS
final User emily = User(
  id: 6,
  name: 'Emily',
  imageUrl:
      'https://pixabay.com/photos/woman-model-portrait-pose-style-3584435/',
);
final User sophia = User(
  id: 7,
  name: 'Sophia',
  imageUrl:
      'https://pixabay.com/photos/woman-portrait-model-smile-smiling-657753/',
);
final User mia = User(
  id: 8,
  name: 'Mia',
  imageUrl:
      'https://pixabay.com/photos/fashion-model-portrait-indian-woman-6960097/',
);
final User eve = User(
  id: 9,
  name: 'Eve',
  imageUrl:
      'https://pixabay.com/photos/woman-fashion-portrait-model-pose-6771288/',
);
final User aisha = User(
  id: 10,
  name: 'Aisha',
  imageUrl:
      'https://pixabay.com/photos/woman-model-portrait-pose-style-4390055/',
);

// ALL CONTACTS
List<User> allContacts = [
  liam,
  noah,
  oliver,
  james,
  mohammed,
  emily,
  sophia,
  mia,
  eve,
  aisha,
];

// EXAMPLE CHATS ON CHAT SCREEN
List<Message> chats = [
  Message(
    sender: liam,
    time: '5:40 PM',
    text: 'Bro, don\'t forget to carry the laptop tommorrow.',
    unread: true,
  ),
  Message(
    sender: noah,
    time: '4:09 PM',
    text: 'Man United won today, what a surprise!',
    unread: true,
  ),
  Message(
    sender: emily,
    time: '12:02 PM',
    text: 'Love you ❤️',
    unread: true,
  ),
  Message(
    sender: oliver,
    time: '3:37 PM',
    text: 'Man, these presidential debates are a joke!',
    unread: false,
  ),
  Message(
    sender: james,
    time: '2:32 PM',
    text: 'Received it man, thanks!',
    unread: true,
  ),
  Message(
    sender: mohammed,
    time: '12:19 PM',
    text: 'We\'ll talk soon bro, take care',
    unread: false,
  ),
  Message(
    sender: sophia,
    time: '11:47 AM',
    text: 'Will, what did he say to you?',
    unread: false,
  ),
  Message(
    sender: mia,
    time: '11:13 AM',
    text: 'The jacket was big, I liked it',
    unread: false,
  ),
  Message(
    sender: eve,
    time: '10:31 AM',
    text: 'I don\'t know what you are talking about.',
    unread: true,
  ),
  Message(
    sender: aisha,
    time: '10:23 AM',
    text: 'Say hi to them. Have fun!',
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN

List<Message> chatLiam = [
  Message(
    sender: liam,
    time: '5.00 PM',
    text: 'Hi bro?',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '5.03 PM',
    text: 'Hey',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '5.04 PM',
    text: 'What\'s up',
    unread: true,
  ),
  Message(
      sender: liam,
      time: '5.40 PM',
      text: 'Bro, don\'t forget to carry the laptop tommorrow.',
      unread: true),
];

List<Message> chatNoah = [
  Message(
    sender: noah,
    time: '3:20 PM',
    text: 'Your team plays today man',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '3:27 PM',
    text: 'I have no hope with this team bro',
    unread: true,
  ),
  Message(
    sender: noah,
    time: '3:29 PM',
    text: '😂😂😂',
    unread: true,
  ),
  Message(
    sender: noah,
    time: '3:29 PM',
    text: 'If you lose today, surely the manager has to go!',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '3:33 PM',
    text: 'Exactly. I miss Fergie days man😔',
    unread: true,
  ),
  Message(
    sender: liam,
    time: '4.09 PM',
    text: 'Man United won today, what a surprise!',
    unread: true,
  ),
];

List<Message> chatOliver = [
  Message(
    sender: currentUser,
    time: '3:21 PM',
    text: 'Hi, did you watch the presidential debate last night?',
    unread: true,
  ),
  Message(
    sender: oliver,
    time: '3:36 PM',
    text: 'No.',
    unread: true,
  ),
  Message(
    sender: oliver,
    time: '3:37 PM',
    text: 'Man, these presidential debates are a joke!',
    unread: true,
  ),
];

List<Message> chatJames = [
  Message(
    sender: james,
    time: '1:20 PM',
    text: 'Hi Will, would you please share the document with me?',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '1:31 PM',
    text: 'Sure.',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '1:38 PM',
    text: 'I\'ve sent it. Check it on google drive',
    unread: true,
  ),
  Message(
    sender: james,
    time: '2:32 PM',
    text: 'Received it man, thanks!',
    unread: true,
  ),
];

List<Message> chatMohammed = [
  Message(
    sender: mohammed,
    time: '11:19 AM',
    text: 'Hey, how\'s the city, still the same old rain everyday?',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '11:32 AM',
    text: '😂😂 yeah! it rains like crazy here.',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '11:33 PM',
    text: 'But all is good.',
    unread: true,
  ),
  Message(
    sender: mohammed,
    time: '12:19 PM',
    text: 'We\'ll talk soon bro, take care',
    unread: false,
  ),
];

List<Message> chatEmily = [
  Message(
    sender: currentUser,
    time: '08:19 AM',
    text: 'Hey, going out to bring some breakfast.',
    unread: true,
  ),
  Message(
    sender: emily,
    time: '08:25 AM',
    text: 'Okay',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '11: 37 AM',
    text: 'I be home a bit early today. ',
    unread: true,
  ),
  Message(
    sender: emily,
    time: '12:02 PM',
    text: 'Love you ❤️',
    unread: true,
  ),
];

List<Message> chatSophia = [
  Message(
    sender: currentUser,
    time: '09:21 AM',
    text: 'I spoke with your boss today. He\'s pissed!',
    unread: true,
  ),
  Message(
    sender: sophia,
    time: '09:23 AM',
    text: 'What! I thought all the tasks were completed.',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '09: 37 AM',
    text: 'He said something about the umbrella project',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '09: 38 AM',
    text: 'He said some things need to be redone.',
    unread: true,
  ),
  Message(
    sender: sophia,
    time: '11:47 AM',
    text: 'Will, what did he say to you?',
    unread: false,
  ),
];

List<Message> chatMia = [
  Message(
    sender: currentUser,
    time: '10:50 AM',
    text: 'What a night, huh?',
    unread: true,
  ),
  Message(
    sender: mia,
    time: '10:51 AM',
    text: 'Yeah, really enjoyed it. ',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '10: 55 AM',
    text: 'Me too! I wish it did not rain so early though.',
    unread: true,
  ),
  Message(
    sender: mia,
    time: '10: 57 AM',
    text: 'I agree.',
    unread: true,
  ),
  Message(
    sender: mia,
    time: '11:13 AM',
    text: 'The jacket was big, I liked it',
    unread: false,
  ),
];

List<Message> chatEve = [
  Message(
    sender: currentUser,
    time: '10:20 AM',
    text: 'Hi Eve, did you manage to finish the assignment?',
    unread: true,
  ),
  Message(
    sender: eve,
    time: '10:33 AM',
    text: 'Which one? The one Prof. Williams left last time?',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '10: 47 AM',
    text: 'No, the one Dr. Phillip left yesterday at the end of the class.',
    unread: true,
  ),
  Message(
    sender: mia,
    time: '10: 49 AM',
    text: '😂😂 stop with the jokes',
    unread: true,
  ),
  Message(
    sender: eve,
    time: '10:31 AM',
    text: 'I don\'t know what you are talking about.',
    unread: false,
  ),
];

List<Message> chatAisha = [
  Message(
    sender: aisha,
    time: '10:01 AM',
    text: 'Still cant believe it was you last night.',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '10:06 AM',
    text: '😂😂 I cant believe it was you! How long has it been! 8 years?!',
    unread: true,
  ),
  Message(
    sender: aisha,
    time: '10: 09 AM',
    text: '😅😅 yeah, crazy how time flies.',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '10: 12 AM',
    text: 'FACT. I will be meeting some old friends later too.',
    unread: true,
  ),
  Message(
    sender: aisha,
    time: '10: 15 AM',
    text: 'Wow! That is so nice. I would\'ve liked to join you but cant.',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '10: 21 AM',
    text: 'It is okay, there is always a next time.',
    unread: true,
  ),
  Message(
    sender: aisha,
    time: '10:23 AM',
    text: 'Say hi to them. Have fun!',
    unread: false,
  ),
];
