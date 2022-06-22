import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final DateTime now = DateTime.now();
final DateFormat formatter = DateFormat('EEEE');
final String date = formatter.format(now);
final DateFormat day = DateFormat('d');
final dateIndex = day.format(now);
final dateNumIndex = int.parse(dateIndex);

var prayer = [
  "Our Father in heaven, Hallowed be Your name. Your kingdom has come. Your will be done on earth as it is in heaven. Give us this day our daily bread. And forgive us our debts, As we forgive our debtors. And do not lead us into temptation, But deliver us from the evil one. For Yours is the kingdom and the power and the glory forever. Amen.",
  "The LORD is my shepherd; I shall not want. He makes me lie down in green pastures; He leads me beside the still waters. He restores my soul; He leads me in the paths of righteousness For His name’s sake. Yea, though I walk through the valley of the shadow of death, I will fear no evil; For You are with me; Your rod and Your staff, they comfort me. You prepare a table before me in the presence of my enemies; You anoint my head with oil; My cup runs over. Surely goodness and mercy shall follow me All the days of my life; And I will dwell in the house of the LORD Forever.",
  "God grant me the serenity To accept the things I cannot change; Courage to change the things I can; And wisdom to know the difference. Living one day at a time; Enjoying one moment at a time; Accepting hardships as the pathway to peace; Taking, as He did, this sinful world As it is, not as I would have it; Trusting that He will make things right If I surrender to His Will; So that I may be reasonably happy in this life And supremely happy with Him Forever and ever in the next. Amen."
];

_prayerChange() {
  return prayer[dateNumIndex % prayer.length];
}

class PanelWidget extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;

  const PanelWidget({
    Key? key,
    required this.controller,
    required this.panelController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView(
        padding: EdgeInsets.zero,
        controller: controller,
        children: <Widget>[
          SizedBox(height: 0.h),
          buildDragHandle(),
          SizedBox(height: 36.h),
          buildText(),
          SizedBox(height: 24.h),
          ownerName(),
        ],
      );

  Widget buildDragHandle() => GestureDetector(
        child: Center(
          child: Container(
            width: 75.w,
            height: 75.h,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage('assets/circlelogo.png')),
            ),
          ),
        ),
        onTap: togglePanel,
      );

  void togglePanel() => panelController.isPanelOpen
      ? panelController.close()
      : panelController.open();

  Widget buildText() => Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text(
                "DAILY PRAYER",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              margin: EdgeInsets.all(25.sp),
              child: Center(
                child: Text(
                  _prayerChange(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      height: 1.5.h,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      );

  // _launchURL() async {
  //   const url = 'https://turningtearsintojoy.com';
  //   if (await canLaunch(url)) {
  //     await launch(url,
  //         forceSafariVC: true,
  //         forceWebView: true,
  //         enableJavaScript: true,
  //         enableDomStorage: true);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  Widget ownerName() => Center(
        child: Container(
          height: 40.h,
          width: 125.w,
          decoration: BoxDecoration(
              color: const Color(0xFFEE2A7B),
              borderRadius: BorderRadius.all(Radius.circular(8.r))),
          child: Center(
              child: Text("Irene Hill",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontSize: 20.sp))),
        ),
      );
}
