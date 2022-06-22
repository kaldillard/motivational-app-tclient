import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

final DateTime now = DateTime.now();
final DateFormat formatter = DateFormat('EEEE');
final String date = formatter.format(now);
final DateFormat longDay = DateFormat('D');
final int dateRealRedex = int.parse(longDay.format(now));
int dateOldRedex = int.parse(longDay.format(now)) - 1;

class ExpansionBar extends StatefulWidget {
  const ExpansionBar({Key? key}) : super(key: key);

  @override
  _ExpansionBarState createState() => _ExpansionBarState();
}

class _ExpansionBarState extends State<ExpansionBar> {
  Random random = Random();

  late int verseIndex = random.nextInt(25);

  _verseChange() {
    if (dateOldRedex != dateRealRedex) {
      setState(() {
        verseIndex++;
      });

      return verse[verseIndex % verse.length];
    } else {
      return "error";
    }
  }

  _bookChange() {
    return book[verseIndex % book.length];
  }

  List<String> verse = [
    "Seek the LORD while He may be found, Call upon Him while He is near.",
    "Oh, taste and see that the Lord is good, Blessed is the man who trusts in Him!",
    "There is no fear in love; but perfect love casts out fear, because fear involves torment. But he who fears has not been made perfect in love.",
    "Search me, O God, and know my heart; Try me, and know my anxieties; And see if there is any wicked way in me, And lead me in the way everlasting.",
    "Behold, I will do a new thing, Now it shall spring forth; Shall you not know it?",
    "To everything there is a season, A time for every purpose under heaven:",
    "The preparations of the heart belong to man, But the answer of the tongue is from the LORD.",
    "Commit your works to the LORD, And your thoughts will be established.",
    "Humble yourselves in the sight of the Lord, and He will lift you up",
    "No temptation has overtaken you except such as is common to man; but God is faithful, who will not allow you to be tempted beyond what you are able, but with the temptation will also make the way of escape, that you may be able to bear it. God has prepared a way out of any situation that no longer builds me into the person He called me to be.",
    "And He said to me, “My grace is sufficient for you, for My strength is made perfect in weakness.” God’s strength is made perfect in me. When  I'm weak, He strengthens me and makes me strong to overcome my weakness.",
    "For My yoke is easy and My burden is light. Give all your burdens to the Lord and He will give you His peace.",
    "For where your treasure is, there your heart will be also. Where is your treasure? What’s in your heart? When you discover the treasures of your heart you will find your joy!",
    "I can do all things through Christ who strengthens me. With God on my side I can never fail.",
    "You are the salt of the earth But if salt has lost its taste How shall its saltiness be restored?",
    "For I know the plans I have for you, “Declares the LORD,” plans to prosper You and not to harm you, plans to give you hope and a future”",
    "No weapons formed against you shall prosper And every tongue which rises against you in judgment You shall be condemned. This is the heritage of the servants of the Lord, And their righteousness is from Me, “ Says the Lord.",
    "With God all things are possible",
    "Without faith no one can please God because the one coming to God must believe He exists, and He rewards those who come seeking",
    "God is a Spirit and they that worship him must worship him in spirit and in truth.",
    "The Lord gives strength to His people; The Lord blesses his people with Peace.",
    "God is our refuge and strength, An ever-present help in trouble Therefore we will not fear.",
    "God is Good God’s faithful love lasts forever",
    "Everything I touch prosper!",
    "The Lord is my rock, my fortress, my deliverer, My God, my stronghold in whom I take refuge, my shield, The glory of my salvation, and my high tower.",
    "The Lord is with me I will not be afraid",
    "The battle is not ours, but God’s",
    "You are being renewed in the Spirit of your mind",
    "Those who seek the Lord Shall not lack any good thing.",
    "God’s way is perfect. All the Lord’s promises prove true. He is a shield for all who look to Him for protection.",
    "For My thoughts are not your thoughts, And your ways are not my ways, says the Lord.",
  ];

  List<String> book = [
    "Isaiah 55:6",
    "Psalms 34:8",
    "1 John 4:18",
    "Psalms 139:23-24",
    "Isaiah 43:19",
    "Ecclesiastes 3:1",
    "Proverbs 16:1",
    "Proverbs 16:3",
    "James 4:10",
    "1 Corinthians 10:13",
    "2 Corinthians 12:9",
    "Matthew 11:30",
    "Matthew 6:21-22",
    "Philippians 4:13",
    "Matthew 5:13",
    "Jeremiah 29:11",
    "Isaiah 54:17",
    "Matthew 19:26",
    "Hebrews 11:6",
    "John 4:24",
    "Psalms 29:11",
    "Psalms 46:1",
    "2 Chronicles 5:13",
    "Deuteronomy 28:8",
    "Psalms 18:2",
    "Psalms 118:6",
    "2 Chronicles 20:15",
    "Ephesians 3:23",
    "Psalm 34:10",
    "Psalm 18:30",
    "Isaiah 55:8",
  ];
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text(
        'DAILY SCRIPTURE',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontStyle: FontStyle.italic,
        ),
        textAlign: TextAlign.center,
      ),
      children: [
        Container(
          padding: EdgeInsets.all(10.r),
          child: Text(
            _verseChange(),
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: 10.r),
            child: Text(
              _bookChange(),
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
      onExpansionChanged: (isExpanded) => Container(
        height: isExpanded ? 75 : 200,
      ),
    );
  }
}



// Widget buildText(BuildContext context) => ExpansionTile(
//       title: const Text(
//         'DAILY SCRIPTURE',
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//           color: Colors.black,
//           fontStyle: FontStyle.italic,
//         ),
//         textAlign: TextAlign.center,
//       ),
//       children: [
//         Container(
//           padding: const EdgeInsets.all(10),
//           child: Text(
//             verse[dateNumIndex % verse.length],
//             style: const TextStyle(
//               fontWeight: FontWeight.w500,
//               height: 1.5,
//             ),
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Center(
//           child: Padding(
//             padding: const EdgeInsets.only(bottom: 10),
//             child: Text(
//               book[dateNumIndex % book.length],
//               style: const TextStyle(
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ),
//         ),
//       ],
//       onExpansionChanged: (isExpanded) => Container(
//         height: isExpanded ? 75 : 200,
//       ),
//     );
