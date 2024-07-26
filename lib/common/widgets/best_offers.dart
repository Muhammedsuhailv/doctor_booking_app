import 'package:flutter/material.dart';

class BestOffers extends StatefulWidget {
  const BestOffers({super.key});

  @override
  State<BestOffers> createState() => _BestOffersState();
}

class _BestOffersState extends State<BestOffers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:   Container(
          height: 100,
          width: 230,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // color: Colors.white,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("asset/sexualhealth.png"),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.0), // Use SizedBox for spacing
                Text(
                  "All things Men",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff00B8FE),
                  ),
                ),
                SizedBox(height: 5.0), // Use SizedBox for spacing
                Text(
                  "Get discreet consultations\non sexual health",
                  style: TextStyle(color: Color(0xff00B8FE)),
                ),
                Spacer(), // Use Spacer to fill the remaining space
                Container(
                  alignment: Alignment.center,
                  width: 118,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color(0xff00B8FE),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.video_call_outlined, color: Colors.white),
                      Text(
                        " Consult Now ",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.0), // Use SizedBox for spacing
              ],
            ),
          ),
        )
    );
  }
}
