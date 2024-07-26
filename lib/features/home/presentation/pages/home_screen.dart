import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practo_main/common/sized_box/sized_box.dart';
import 'package:practo_main/common/widgets/video_consultations.dart';
import '../../../../common/widgets/cmn_container2.dart';
import '../../../../common/widgets/common_button.dart';
import '../../../../common/widgets/doctorslist.dart';
import '../../../../common/widgets/promotion_banners.dart';
import '../../../../common/widgets/symptoms.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imgList = [
    'asset/dental.jpg',
    'asset/dental.jpg',
    'asset/dental.jpg',
  ];
  String? selectedLocation;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Color(0xffF0F6F6),
                              child: Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(width: 8.0),
                            const Icon(
                              Icons.location_on,
                              size: 15,
                              color: Color(0xff253292),
                            ),
                            SizedBox(
                              width: screenWidth * 0.4,
                              child: DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  hintText: 'Location',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  isDense: true,
                                ),
                                value: selectedLocation,
                                onChanged: (String? value) {
                                  setState(() {
                                    selectedLocation = value;
                                  });
                                },
                                items: [
                                  'Bangalore',
                                  'Chennai',
                                  'Hyderabad',
                                  'Andra'
                                ].map((String item) {
                                  return DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: screenWidth * 0.19,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: const Color(0XFF98E2FE),
                                  borderRadius: BorderRadius.circular(7)),
                              child: const Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  Image(image: AssetImage("asset/doc.png")),
                                  Text("ABHA"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    SizedBox(
                        width: screenWidth * 1,
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xffF0F6F6),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(50)),
                              prefixIcon: const Icon(Icons.search),
                              hintText: 'Search for clinics and hospitals'),
                        )),
                    const  SizedBox(height: 10.0),
                    const Divider(),
                    const SizedBox(height: 5.0),
                    const SizedBox(height: 225, child: DoctorsList()),
                    const SizedBox(height: 10.0),
                    const Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffF0F6F6),
                          child: Icon(
                            Icons.star_border,
                            color: Color(0xff253292),
                          ),
                        ),
                        Text(
                          "Featured services",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      width: screenWidth,
                      height: screenHeight * (230 / screenHeight),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff253292),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            const  SizedBox(height: 10.0),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    "Affordable Procedures by",
                                    style: TextStyle(color: Colors.white),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    " Expert Doctors",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            const  SizedBox(height: 10.0),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomContainer2(
                                  imagePath: "asset/piles.jpg",
                                  title: "Piles",
                                ),
                                CustomContainer2(
                                  imagePath: "asset/pregnancy.jpg",
                                  title: "Pregnancy",
                                ),
                                CustomContainer2(
                                  imagePath: "asset/knee.jpg",
                                  title: "Knee",
                                ),
                                CustomContainer2(
                                  imagePath: "",
                                  title: "More",
                                  color: Color(0xff00DEFF),
                                  isImage: false,
                                ),
                              ],
                            ),
                            const Spacer(),                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "All insurance accepted\n& No Cost EMI available",
                                  style: TextStyle(color: Colors.white),
                                ),
                                // SizedBox(width: 2),
                                Flexible(
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: const Color(0XFF98E2FE),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    child: const Text("Get Cost Estimate"),
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 5.0),

                          ],
                        ),
                      ),
                    ),
                   const SizedBox(height: 5.0),
                    PromotionBanner(),
                    const Divider(
                      thickness: 5,
                    ),
                   const SizedBox(height: 10.0),
                    const Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffF0F6F6),
                          child: Icon(
                            Icons.videocam_outlined,
                            color: Color(0xff253292),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Not feeling too well?",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Treat common symptoms with top specialists?",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        )
                      ],
                    ),
                  SizedBoxes.normalSizedBox,
                    SizedBox(child: SympToms2()),
                    SizedBoxes.normalSizedBox,
                    CommonButton(
                      buttonText: "View All Symptoms",
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              SizedBoxes.normalSizedBox,
              Container(
                color: const Color(0xff253292),
                width: double.infinity,
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                     const  Row(
                        children: [
                          Image(image: AssetImage("asset/Vector.png")),
                          SizedBox(width: 8.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Best offers",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Explore deals, offers, health updates and more",
                                style: TextStyle(color: Colors.white, fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBoxes.largeSizedBox
,                      Container(
                        height: 150,
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // color: Colors.white,
                          image:const DecorationImage(
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
                              const SizedBox(height: 5.0),
                              const Text(
                                "All things Men",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff00B8FE),
                                ),
                              ),
                              const SizedBox(height: 5.0),
                              const Text(
                                "Get discreet consultations\non sexual health",
                                style: TextStyle(color: Color(0xff00B8FE)),
                              ),
                              const Spacer(),
                              Container(
                                alignment: Alignment.center,
                                width: 108,
                                height: 30,
                                decoration: BoxDecoration(
                                  color:const Color(0xff00B8FE),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.video_call_outlined, color: Colors.white),
                                    Text(
                                      "Consult Now",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 5.0),
                            ],
                          ),
                        ),
                      )

                    ],
                  ),
                ),
              ),
              const  SizedBox(height: 10.0),
              const Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffF0F6F6),
                    child: Icon(
                      Icons.local_hospital_rounded,
                      color: Color(0xff253292),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    "Conditions that can be treated\nthrough surgeries ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBoxes.normalSizedBox,
              SizedBox(child: SympToms2()),
              Container(
                color: const Color(0xff253292),
                width: double.infinity,
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      const Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xffF0F6F6),
                            child: Icon(
                              Icons.videocam_outlined,
                              color: Color(0xff253292),
                            ),
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            "Safe and Secure surgeries",
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBoxes.largeSizedBox
                      ,                      Container(
                        height: 150,
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // color: Colors.white,
                          image:const DecorationImage(
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
                              const SizedBox(height: 5.0),
                              const Text(
                                "All things Men",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff00B8FE),
                                ),
                              ),
                              const SizedBox(height: 5.0),
                              const Text(
                                "Get discreet consultations\non sexual health",
                                style: TextStyle(color: Color(0xff00B8FE)),
                              ),
                              const Spacer(),
                              Container(
                                alignment: Alignment.center,
                                width: 108,
                                height: 30,
                                decoration: BoxDecoration(
                                  color:const Color(0xff00B8FE),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.video_call_outlined, color: Colors.white),
                                    Text(
                                      "Consult Now",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 5.0),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBoxes.normalSizedBox,
              const Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffF0F6F6),
                    child: Icon(
                      Icons.videocam_outlined,
                      color: Color(0xff253292),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    "Instant video consultations with\nspecialists",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBoxes.normalSizedBox,
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: SizedBox(height: 550, child: VideoConsultations()),
               ),
              SizedBoxes.largeSizedBox,
              CommonButton(
                buttonText: "View All Symptoms",
                onPressed: () {},
              ),
              SizedBoxes.normalSizedBox,
              Divider(thickness: 5,),
              SizedBoxes.normalSizedBox,
              const Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffF0F6F6),
                    child: Icon(
                      Icons.calendar_month,
                      color: Color(0xff253292),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    "Book appointments with top\nspecialist in your city",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),

                  SizedBoxes.normalSizedBox,
                ],
              ),
              SizedBoxes.normalSizedBox,
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(height: 450, child: VideoConsultations()),
              ),
              SizedBoxes.largeSizedBox,
              CommonButton(
                buttonText: "View All Symptoms",
                onPressed: () {},
              ),
              SizedBoxes.normalSizedBox,
              Divider(thickness: 5,),
              SizedBoxes.normalSizedBox,
              const Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffF0F6F6),
                    child: Icon(
                      Icons.calendar_month,
                      color: Color(0xff253292),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    "Find Doctors Available Near You",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),

                  SizedBoxes.normalSizedBox,
                ],
              ),
              Container(width: double.infinity,
              height: screenHeight *0.5,
                color: Color(0xff253292),
                child:   Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '•',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff00B8FE),
                                ),
                              ),
                              TextSpan(
                                text: ' Practo ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              TextSpan(
                                text: '•',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff00B8FE),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          "Our vision is to help mankind live\nhealthier, longer lives by making\nquality healthcare accessible,\naffordable and convenient,",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBoxes.smallSizedBox,
                      Flexible(
                        child: Text(
                          "Made by Practeons @ Bangalore.",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}