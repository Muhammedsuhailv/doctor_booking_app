import 'package:flutter/material.dart';

class VideoConsultations extends StatelessWidget {
  final List<Map<String, String>> videoitems = [
    {
      "image": "assets/general.jpg",
      "title": "Pregnancy Issues",
      "subtitle": "Consult for fever, cough,\npain, headache, tiredness,\nand more",
      "time": "Available in 3 mins",
    },
    {
      "image": "assets/skin.jpg",
      "title": "General Physician",
      "subtitle": "Consult for fever, cough,\npain, headache, tiredness,\nand more",
      "time": "Available in 3 mins",
    },
    {
      "image": "assets/general.jpg",
      "title": "Dietitian",
      "subtitle": "Consult for diet plans,\nnutrition advice, weight loss,\nand more",
      "time": "Available in 3 mins",
    },
    {
      "image": "assets/general.jpg",
      "title": "Dermatologist",
      "subtitle": "Consult for skin issues,\nrashes, acne, allergies,\nand more",
      "time": "Available in 3 mins",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: videoitems.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(videoitems[index]['image']!),
                    fit: BoxFit.cover,
                  ),
                ),
                width: (screenWidth / 2) - 20,
                height: screenHeight * 0.2,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                    child: Container(
                      width: 65,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.videocam_outlined, size: 10),
                          SizedBox(width: 5),
                          Text(
                            "VIDEO",
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                videoitems[index]['title']!,
                style: TextStyle(fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 5),
              Text(
                videoitems[index]['subtitle']!,
                style: TextStyle(fontSize: 10),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              SizedBox(height: 5),
              Text(
                videoitems[index]['time']!,
                style: TextStyle(color: Color(0xff358D00), fontSize: 12),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          );
        },
      ),
    );
  }
}

  final List<Map<String, String>> videoitems2 = [
    {
      "image": "assets/general.jpg",
      "title": "Orthopedist",
      "subtitle": "Consult for fever, cough,\npain, headache, tiredness,\nand more",
      "count": "249 Doctors available",
    },
    {
      "image": "assets/skin.jpg",
      "title": "Dentist",
      "subtitle": "Consult for fever, cough,\npain, headache, tiredness,\nand more",
      "count": "249 Doctors available",
    },
    {
      "image": "assets/general.jpg",
      "title": "Dermatologist",
      "subtitle": "Consult for diet plans,\nnutrition advice, weight loss,\nand more",
      "count": "249 Doctors available",
    },
    {
      "image": "assets/general.jpg",
      "title": "Pediatrician",
      "subtitle": "Consult for skin issues,\nrashes, acne, allergies,\nand more",
      "count": "249 Doctors available",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: videoitems2.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(videoitems2[index]['image']!),
                    fit: BoxFit.cover,
                  ),
                ),
                width: (screenWidth / 2) - 20,
                height: screenHeight * 0.2,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                    child: Container(
                      width: 65,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.videocam_outlined, size: 10),
                          SizedBox(width: 5),
                          Text(
                            "VIDEO",
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                videoitems2[index]['title']!,
                style: TextStyle(fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 5),
              Text(
                videoitems2[index]['subtitle']!,
                style: TextStyle(fontSize: 10),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              SizedBox(height: 5),
              Text(
                videoitems2[index]['count']!,
                style: TextStyle(color: Color(0xff358D00), fontSize: 12),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          );
        },
      ),
    );
  }

