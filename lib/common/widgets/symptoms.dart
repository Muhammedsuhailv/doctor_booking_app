import 'package:flutter/material.dart';

class SympToms extends StatelessWidget {
  final List<Map<String, String>> items = [
    {"image": "assets/bone.jpg", "label": "Pregnancy Issues"},
    {"image": "assets/pregnancy.jpg", "label": "Knee Issues"},
    {"image": "assets/dental.jpg", "label": "Dental Care"},
    {"image": "assets/piles.jpg", "label": "Piles Treatment"},
    {"image": "assets/eye.jpg", "label": "Eye Care"},
    {"image": "assets/heart.jpg", "label": "Heart Care"},
    {"image": "assets/skin.jpg", "label": "Skin Care"},
    {"image": "assets/bone.jpg", "label": "Bone Care"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Expanded(
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blueGrey,
                  backgroundImage: AssetImage('assets/pregnancy.jpg'),
                ),
              ),
              SizedBox(height: 5),
              Text(
                items[index]['label']!,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ],
          );
        },
      ),
    );
  }
}


class SympToms2 extends StatelessWidget {
  final List<Map<String, String>> items2 = [
    {"image": "assets/bone.jpg", "label": "Pregnancy Issues"},
    {"image": "assets/pregnancy.jpg", "label": "Knee Issues"},
    {"image": "assets/dental.jpg", "label": "Dental Care"},
    {"image": "assets/piles.jpg", "label": "Piles Treatment"},
    {"image": "assets/eye.jpg", "label": "Eye \nCare"},
    {"image": "assets/heart.jpg", "label": "Heart Care"},
    {"image": "assets/skin.jpg", "label": "Skin \nCare"},
    {"image": "assets/bone.jpg", "label": "Bone Care"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: items2.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Expanded(
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blueGrey,
                  backgroundImage: AssetImage('assets/pregnancy.jpg'),
                ),
              ),
              SizedBox(height: 5),
              Text(
                items2[index]['label']!,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ],
          );
        },
      ),
    );
  }
}

