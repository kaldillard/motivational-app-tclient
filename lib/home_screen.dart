import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_turntearsintojoy/expansion.dart';
import 'package:intl/intl.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'panel_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:core';

final DateTime now = DateTime.now();
final DateFormat formatter = DateFormat('EEEE');
final String date = formatter.format(now);
final DateFormat day = DateFormat('d');
final DateFormat longDay = DateFormat('D');
var dateIndex = day.hashCode;
final int dateRealIndex = int.parse(longDay.format(now));
int dateOldIndex = int.parse(longDay.format(now)) - 1;

class Wisdom extends StatefulWidget {
  const Wisdom({Key? key}) : super(key: key);

  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  _dayTitle() {
    switch (date) {
      case 'Monday':
        return _mondayTitle();
      case 'Tuesday':
        return _tuesdayTitle();
      case 'Wednesday':
        return _wednesdayTitle();
      case 'Thursday':
        return _thursdayTitle();
      case 'Friday':
        return _fridayTitle();
      case 'Saturday':
        return _saturdayTitle();
      case 'Sunday':
        return _sundayTitle();
      default:
        "Error";
    }
  }

  _dayAffirmation() {
    switch (date) {
      case 'Monday':
        return _mondayAffirmation();
      case 'Tuesday':
        return _tuesdayAffirmation();
      case 'Wednesday':
        return _wednesdayAffirmation();
      case 'Thursday':
        return _thursdayAffirmation();
      case 'Friday':
        return _fridayAffirmation();
      case 'Saturday':
        return _saturdayAffirmation();
      case 'Sunday':
        return _sundayAffirmation();
      default:
        "Error";
    }
  }

  final panelController = PanelController();

  List<String> mondayTitle = [
    'Monday Motivation',
    'Monday Moments',
    'Monday Magic',
    'Magnificent Monday',
    'Marvelous Monday',
    'Miracle Monday',
    'Monday Memories',
    '',
    '',
  ];

  List<String> mondayAffirmation = [
    'Setting goals, making plans, changing behavior, and trusting the process.',
    'Enjoying the here and now. Making memories and savoring it all.',
    'Believing it’s possible, creating the life you want and making it happen.',
    'Creating something beautiful, taking elaborate steps and making great progress. Life is extremely awesome.',
    'You’re doing a marvelous job, You’re a marvelous person, and you’re creating a marvelous experience.',
    'Expecting the unexpected.',
    'Enjoying new experiences to create lasting memories.',
    'There is no I in team together we win! Divided we fail!',
    'No one can tell you what peace or happiness is to you no one can tell you what they would do if they haven’t walked in your shoes. Experience is the best teaching because you learn what you want and what you don’t want.',
  ];

  List<String> tuesdayTitle = [
    'Teachable Tuesday',
    'Talented Tuesday',
    'Testimony Tuesday',
    'Transparent Tuesday',
    'Trusting Tuesday',
    'Triumphant Tuesday',
    'Timeless Tuesday',
    '',
    '',
  ];

  List<String> tuesdayAffirmation = [
    'Learning new patterns and using new tools to improve the quality of our experiences.',
    'Expressing our creative styles, and using our talents to build on our dreams.',
    'Sharing my accomplishments with family and friends,proud of my success.',
    'Honesty, clearing a path, open, seeing with new eyes.',
    'Trusting the process, being optimistic, having confidence everything is working out for my good.',
    'Celebrating all my victories, Praising God/Higher Power for all my blessings.',
    'No deadline on my journey of life, enjoying the minutes.',
    'When the Praises go up! The blessings come down!',
    'Always expect something amazing to happen to you and for you! Never stop hoping for the best! Always remember what didn’t happen today, there is always tomorrow!',
  ];

  List<String> wednesdayTitle = [
    'Willing Wednesday',
    'Warrior Wednesday',
    'Worry Free Wednesday',
    'Worthy Wednesday',
    'Worthwhile Wednesday',
    'Well-Being Wednesday',
    'Working it out Wednesday',
    '',
    '',
  ];

  List<String> wednesdayAffirmation = [
    'Willing to go the extra mile, doing whatever I need to do to accomplish my goals.',
    'Fighting my way through the obstacles, clearing a path to my future.',
    'Having no anxiety or stress, no concerns about my current situations.',
    'I am enough, I am worthy, I am valuable, I am important, and I am loved.',
    'Making a worthwhile effort in my journey for my new life.',
    'My wellbeing is important, I’m  being mindful of people, places and things that will affect my happiness and joy.',
    'Honesty, Truth, and Patience. I’m going to receive my victory, I deserve it.',
    'Always hope for the best. You have everything you need already inside of you, don’t be afraid to try.',
    'God knew everything that you would go through, and He made sure that you were strong enough to handle it. He said He would never leave you or forsake you, so anytime you’re in doubt just ask the Lord for directions and He will guide you.',
  ];

  List<String> thursdayTitle = [
    'Thursday Treasure',
    'Therapy Thursday',
    'Thriving Thursday',
    'Thankful Thursday',
    'Terrific Thursday',
    'Take Charge Thursday',
    'Truthful Thursday',
    '',
    '',
  ];

  List<String> thursdayAffirmation = [
    'Enjoying the jewels of my experience to receive the treasures of my success.',
    'Holding myself accountable for my actions, practicing new patterns and being mindful of my choice.',
    'I’m able, I‘m determined, I’m not taking no for an answer.',
    'Giving thanks for every situation good and bad, big and small, but being thankful for it all.',
    'I’ve made big strides in my journey to a better future.',
    'I’m in control of my destiny. I’m handling my situation and choices.',
    'Getting honest about where I am, and where I’m going. The truth shall set me free.',
    "There is no such thing of failing you only find out there are different ways to solve the problem",
    "Please remember that everything didn’t happen over night and nothing will be resolved overnight! Have patience with yourself. Breathe, it’s going to be ok. You’re right where you're supposed to be, time is on your side. Breathe!",
  ];

  List<String> fridayTitle = [
    'Fresh Friday',
    'Forgiveness Friday',
    'Faithful Friday',
    'Fabulous Friday',
    'Feelings Friday',
    'Flourishing Friday',
    'Figure it out Friday',
    '',
    '',
  ];

  List<String> fridayAffirmation = [
    'New beginning, new start, fresh experiences.',
    'Forgiving myself and the people who wronged me.',
    'Staying on track and being committed to me.',
    'Looking good, feeling good and shining bright.',
    'Getting honest about my feelings and not letting them lead me to a dark place of anger, bitterness, or pain.',
    'Glowing, Shining, feeling good, positive emotion, and thoughts.',
    'I’m learning to trust my decisions, working it out myself and becoming independent.',
    'You are the only one who decides what your future is going to look like, Never give anyone control of your life. No matter the outcome let it be your decision!',
    'Wake up and repeat positive affirmations to yourself you’re Amazing, You’re Wonderful, You’re Strong you’re Blessed You’re Valuable You’re Loved everything you need is already in you you are born to win!',
  ];

  List<String> saturdayTitle = [
    'Self-Confident Saturday',
    'Self-Compassion Saturday',
    'Self-Awareness Saturday',
    'Self-Discovery Saturday',
    '',
    '',
  ];

  List<String> saturdayAffirmation = [
    'I’m trusting my judgment and abilities knowing I’m confident to handle anything that comes my way.',
    'Being loving, understanding, compassionate, and empathetic towards myself when I fail, or don’t complete my goals.',
    'Being attuned to my character, motives and desires that will lead me to greater success in my journey.',
    'Learning more about my wants and needs. Putting me first and working on my weaknesses and strengths.',
    'We all make mistakes, we all take wrong turns in life there are no wrong roads to the right place.’ We find out there is plenty of distractions and beautiful scenery to the place that we desire on the way to peace.',
    'We are blessed to be a blessing, we must sow the seeds we want to harvest, if you want love give love, if you want peace you have to be peaceful, if you want joy, you have to be joyful everything you give out will return back to you.',
  ];

  List<String> sundayTitle = [
    'Self-Discipline Sunday',
    'Self-Expression Sunday',
    'Self-Realization Sunday',
    'Self-Satisfaction Sunday',
    'Self-Kindness Sunday',
    'Self-Love Sunday',
    '',
    '',
  ];

  List<String> sundayAffirmation = [
    'Controlling my emotions, feelings and actions. Taking responsibility for me. Motivating myself to complete my goals.',
    'Expressing my innermost thoughts in my journal, writings and feelings.',
    'Understanding what I need for my satisfaction,and  gaining a sense of fulfilment in my experience on my journey of peace.',
    'Satisfied with my achievements, my accomplishments of completing my goals.',
    'I’m not beating myself up for my mistakes, poor decisions, or lack of control when figuring out my life. I realize my mistakes are to make me better, not bitter.',
    'Loving everything about me, accepting my shortcomings, embracing my faults and celebrating my victories.',
    'Hope, Peace, Joy Love, Happy, Content these are the things that make us the people we desire to be every day in a new beginning, every day brings new choices we all have crossed bridges and made unwise choices today, we get to make better decisions and choose different routes today we get to the mountain tops of our destination.',
    'If no one told you that they love you today! God loves you and I do too!',
  ];

  Random random = Random();

  late int monIndex = random.nextInt(5);
  late int tuesIndex = random.nextInt(5);
  late int wedIndex = random.nextInt(5);
  late int thurIndex = random.nextInt(5);
  late int friIndex = random.nextInt(5);
  late int satIndex = random.nextInt(5);
  late int sunIndex = random.nextInt(5);

  _mondayTitle() {
    if (dateOldIndex != dateRealIndex) {
      setState(() {
        monIndex++;
      });

      return mondayTitle[monIndex % mondayTitle.length];
    } else {
      return "error";
    }
  }

  _tuesdayTitle() {
    if (dateOldIndex != dateRealIndex) {
      setState(() {
        tuesIndex++;
      });
      return tuesdayTitle[tuesIndex % tuesdayTitle.length];
    } else {
      return "error";
    }
  }

  _wednesdayTitle() {
    if (dateOldIndex != dateRealIndex) {
      setState(() {
        wedIndex++;
      });
      return wednesdayTitle[wedIndex % wednesdayTitle.length];
    } else {
      return "error";
    }
  }

  _thursdayTitle() {
    if (dateOldIndex != dateRealIndex) {
      setState(() {
        thurIndex++;
      });
      return thursdayTitle[thurIndex % thursdayTitle.length];
    } else {
      return "error";
    }
  }

  _fridayTitle() {
    if (dateOldIndex != dateRealIndex) {
      setState(() {
        friIndex++;
      });
      return fridayTitle[friIndex % fridayTitle.length];
    } else {
      return "error";
    }
  }

  _saturdayTitle() {
    if (dateOldIndex != dateRealIndex) {
      setState(() {
        satIndex++;
      });
      return saturdayTitle[satIndex % saturdayTitle.length];
    } else {
      return "error";
    }
  }

  _sundayTitle() {
    if (dateOldIndex != dateRealIndex) {
      setState(() {
        sunIndex++;
      });
      return sundayTitle[sunIndex % sundayAffirmation.length];
    } else {
      return "error";
    }
  }

  _mondayAffirmation() {
    return mondayAffirmation[monIndex % mondayAffirmation.length];
  }

  _tuesdayAffirmation() {
    return tuesdayAffirmation[tuesIndex % tuesdayAffirmation.length];
  }

  _wednesdayAffirmation() {
    return wednesdayAffirmation[wedIndex % wednesdayAffirmation.length];
  }

  _thursdayAffirmation() {
    return thursdayAffirmation[thurIndex % thursdayAffirmation.length];
  }

  _fridayAffirmation() {
    return fridayAffirmation[friIndex % fridayAffirmation.length];
  }

  _saturdayAffirmation() {
    return saturdayAffirmation[satIndex % saturdayAffirmation.length];
  }

  _sundayAffirmation() {
    return sundayAffirmation[sunIndex % sundayAffirmation.length];
  }

  @override
  Widget build(BuildContext context) {
    final panelHeightOpen = MediaQuery.of(context).size.height * 0.8;
    final panelHeightClosed = MediaQuery.of(context).size.height * 0.1;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFDDDDDD),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(
            'assets/logo.png',
            height: 50.h,
            width: 50.w,
          ),
        ),
        title: const Text(
          "DAILY INSPIRATIONS",
          style:
              TextStyle(color: Color(0xFFEE2A7B), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SlidingUpPanel(
        color: const Color(0xFFA856C3),
        backdropColor: Colors.black,
        controller: panelController,
        maxHeight: panelHeightOpen,
        minHeight: panelHeightClosed,
        parallaxEnabled: true,
        parallaxOffset: .5,
        panelBuilder: (controller) => PanelWidget(
          controller: controller,
          panelController: panelController,
        ),
        backdropEnabled: true,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFA856C3),
                Color(0xFFF7941E),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 50.h),
                  padding: EdgeInsets.only(top: 15.h),
                  child: Text(
                    _dayTitle(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 32.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 15.h),
                  alignment: Alignment.center,
                  width: 375.w,
                  height: 300.h,
                  child: Text(
                    _dayAffirmation(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 350.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0.r),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 5.r,
                            blurRadius: 7.r)
                      ]),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: const [
                        ExpansionBar(),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
