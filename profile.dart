import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.topLeft,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Container(
                height: 200,
                width: width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.esa.int/var/esa/storage/images/esa_multimedia/images/2017/10/esa_astronaut_patch/17218150-1-eng-GB/ESA_astronaut_patch_pillars.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                Padding(
                  padding: EdgeInsets.only(top: 200),
                  child: CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white,
                    child: profilePicture(40),
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: 130)),
                Padding(
                  padding: EdgeInsets.only(top: 235),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    height: 35,
                    width: 140,
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        height: 30,
                        width: 135,
                        child: Center(
                          child: Text(
                            "Editer le profil",
                            style: TextStyle(fontSize: 16, color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        Padding(padding: EdgeInsets.all(5)),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "ESA",
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 19),
          child: Text(
            "@ESA",
            style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal),
          ),
        ),
        Padding(padding: EdgeInsets.all(5)),
        Padding(
          padding: EdgeInsets.only(left: 19),
          child: Text(
            "European Space Agency, keeping you posted on European space activities. ",
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal),
          ),
        ),
        Padding(padding: EdgeInsets.all(7)),
        Row(
          children: [
            Padding(
                padding: EdgeInsets.only(left: 16),
                child: profilebiographie(Icons.location_on_outlined, "Europe")),
            const Padding(padding: EdgeInsets.all(7)),
            profilebiographie(Icons.link, "esa.int"),
            const Padding(padding: EdgeInsets.all(7)),
            profilebiographie(Icons.calendar_today, "join twitter at 2009"),
          ],
        ),
        const Padding(padding: EdgeInsets.all(5)),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: subscribe(following: "859", followers: "1,3 M"),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.all(5)),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 45),
              child: X(text: "Tweets"),
            ),
            const Padding(padding: EdgeInsets.all(13)),
            X(text: "Tweets & replies"),
            const Padding(padding: EdgeInsets.all(13)),
            X(text: "Media"),
            const Padding(padding: EdgeInsets.all(13)),
            X(text: "Likes"),
          ],
        ),
        const Padding(padding: EdgeInsets.all(5)),
        Padding(
          padding: const EdgeInsets.only(left: 47),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            height: 5,
            width: 44,
          ),
        ),
        Divider(
          thickness: 2,
        ),
      ],
    );
  }
}

profilePicture(double radius) {
  return CircleAvatar(
    backgroundImage: const NetworkImage(
        "https://s3.eu-west-3.amazonaws.com/moovijob.prod/1137795/conversions/ESA_Avatar_Corporate_2021-%28New-Logo%29-thumb.jpg"),
    radius: radius,
  );
}

profilebiographie(IconData? icon, String? text) {
  return Row(
    children: [
      Icon(
        icon,
        color: Colors.grey,
      ),
      Padding(padding: EdgeInsets.all(2)),
      Text(
        text ?? "",
        style: TextStyle(color: Colors.grey),
      ),
    ],
  );
}

subscribe({required String following, required String followers}) {
  return Row(
    children: [
      Text(
        "$following, followig",
      ),
      Padding(padding: EdgeInsets.all(5)),
      Text("$followers, followers"),
    ],
  );
}

X({required String text}) {
  return Row(
    children: [
      Text(text),
    ],
  );
}
