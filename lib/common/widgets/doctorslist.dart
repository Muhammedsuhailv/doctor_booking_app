

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'doctorslist.dart';
class DoctorsList extends StatelessWidget {
  const DoctorsList({super.key});

  @override
  Widget build(BuildContext context) {

    List<Map<String, dynamic>> docList = [
      {
        'image': 'asset/doctor1.jpg',
        'title': 'Book In-Clinic\nAppointment',
        'subtitle': 'Confirmed appointments',
      },
      {
        'image': 'asset/doc2.png',
        'title': 'Instant Video\nConsultation',
        'subtitle': 'Connect within 60 seconds',
      },
      {
        'image': 'asset/doctor1.jpg',
        'title': 'Book In-Clinic\nAppointment',
        'subtitle': 'Confirmed appointments',
      },
      {
        'image': 'asset/doc2.png',
        'title': 'Instant Video\nConsultation',
        'subtitle': 'Connect within 60 seconds',
      },
    ];


    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: docList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Card(
                  elevation: 5,
                  child: Container(
                    height: 290,
                    width: 165,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 130,
                  left: 6,
                  child: SizedBox(
                    width: 165,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            docList[index]['title'],
                            style: TextStyle(
                              color: HexColor("#383838"),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(

                            docList[index]['subtitle'],
                            style: TextStyle(
                              color: HexColor("#383838").withOpacity(0.70),

                            ),
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 2,
                  child: Card(
                    elevation: 5,
                    child: Container(
                      height: 120,
                      width: 165,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(docList[index]['image']),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
