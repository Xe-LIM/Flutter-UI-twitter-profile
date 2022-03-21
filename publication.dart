import 'package:flutter/material.dart';
import './profile.dart';

class publication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        publication1(
            25,
            "ESA",
            "@esa . 20 january",
            "Our 2022 call for Young Graduate Trainee opportunities is opening soon! Get your CV and cover letter ready to apply.",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXi3GA649vGTWkjllri83Muj_2Eaixd8B7uA&usqp=CAU",
            Icons.comment,
            "148",
            Icons.restart_alt,
            "312",
            Icons.favorite,
            "874",
            Icons.share),
        Divider(
          thickness: 2,
        ),
        publication1(
            25,
            "ESA",
            "@esa . 14 december",
            "Rocket of esa, take-off",
            "https://www.esa.int/var/esa/storage/images/esa_multimedia/images/2021/09/webb_flies_ariane_animation/23449186-6-eng-GB/Webb_flies_Ariane_animation_pillars.gif",
            Icons.comment,
            "255",
            Icons.restart_alt,
            "158",
            Icons.favorite,
            "1789",
            Icons.share)
      ],
    );
  }
}

publication1(
    double radius,
    String text1,
    String text2,
    String text3,
    String patch,
    IconData icon1,
    String comments,
    IconData icon2,
    String retweets,
    IconData icon3,
    String likes,
    IconData icons4) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: profilePicture(radius),
          ),
          Padding(padding: EdgeInsets.all(5)),
          Text(
            text1,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Padding(padding: EdgeInsets.all(5)),
          Text(
            text2,
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey),
          ),
        ],
      ),
      Padding(
        padding: EdgeInsets.only(left: 70),
        child: Text(text3),
      ),
      Padding(padding: EdgeInsets.all(15)),
      Container(
        margin: EdgeInsets.only(left: 70, right: 10),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(image: NetworkImage(patch), fit: BoxFit.cover),
        ),
        height: 200,
        width: 400,
      ),
      Padding(padding: EdgeInsets.all(15)),
      Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 70),
            child: Icon(icon1),
          ),
          Padding(padding: EdgeInsets.all(5)),
          Text(comments),
          Padding(padding: EdgeInsets.only(left: 35)),
          Icon(icon2),
          Padding(padding: EdgeInsets.all(5)),
          Text(retweets),
          Padding(padding: EdgeInsets.only(left: 35)),
          Icon(icon3),
          Padding(padding: EdgeInsets.all(5)),
          Text(likes),
          Padding(padding: EdgeInsets.only(left: 40)),
          Icon(icons4),
        ],
      ),
    ],
  );
}
