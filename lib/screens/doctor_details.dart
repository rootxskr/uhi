import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components//custom_appbar.dart';
import '../components/button.dart';
import '../utils/config.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({Key? key}) : super(key:key);

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  //for favourite button
  bool isFav=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appTitle: 'Doctor Details',
        icon: const FaIcon(Icons.arrow_back_ios),
        actions: [
          //favourite Button
          IconButton(
            onPressed: () {
              setState((){
                isFav=!isFav;
              });
            },
            icon: FaIcon(
              isFav ? Icons.favorite_rounded : Icons.favorite_outline,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            AboutDoctor(),
            DetailBody(),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Button(
                width: double.infinity,
                title: 'Book Appointment',
                onPressed: () {
                  Navigator.of(context).pushNamed('booking_page');
                },
                disable: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class AboutDoctor extends StatelessWidget {
  const AboutDoctor({Key? key}) : super(key: key);

  // final Map<dynamic, dynamic> doctor;

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 65.0,
            backgroundImage: AssetImage('assets/doctor_2.jpg'),
               backgroundColor: Colors.white,
            ),


          Config.spaceMedium,
          Text(
            'Dr Hemanth Jain',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Config.spaceSmall,
          SizedBox(
            width: Config.widthSize * 0.75,
            child: const Text(
              'MBBS (Gajraja Medical College, Gwalior), MD-Medicine (Gajraja Medical College, Gwalior)',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
          Config.spaceSmall,
          SizedBox(
            width: Config.widthSize * 0.75,
            child: const Text(
              'Lado Ratan Hospital',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
        ],
    ),
      );
  }
}

class DetailBody extends StatelessWidget {
  const DetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Config.spaceSmall,
          const DoctorInfo(),
          Config.spaceMedium,
          const Text('About Doctor', style:TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
    Config.spaceSmall,
    const Text(
    'Dr. Hemanth is an experience Physician Specialist at Lado Ratan Hospital, graduated since 2008, and completed his/her training at Govt. Medical College, Datia.',
    style: TextStyle(
    fontWeight: FontWeight.w500,
    height: 1.5,
    ),
      softWrap: true,
      textAlign: TextAlign.justify,
      )
          // Config.spaceMedium,
          // const Text(
          //   'About Doctor',
          //   style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          // ),
          // Config.spaceSmall,
          // Text(
          //   'Dr. ${doctor['doctor_name']} is an experience ${doctor['category']} Specialist at Sarawak, graduated since 2008, and completed his/her training at Sungai Buloh General Hospital.',
          //   style: const TextStyle(
          //     fontWeight: FontWeight.w500,
          //     height: 1.5,
          //   ),
          //   softWrap: true,
          //   textAlign: TextAlign.justify,
          // )
        ],
      ),
    );
  }
}

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        InfoCard(label: 'Patients', value: '109'),
         SizedBox(
          width: 15,
        ),
        InfoCard(label: 'Experience', value: '10 Years'),
         SizedBox(
          width: 15,
        ),
        InfoCard(label: 'Rating', value: '4.6'),
        // Expanded(child:
        // Container(
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(15),
        //     color: Config.primaryColor,
        //   ),
        //   padding: const EdgeInsets.symmetric(
        //     vertical: 30,
        //     horizontal: 15,
        //   ),
        //   child: Column(
        //     children:const <Widget>[
        //       Text(
        //         'Patients',
        //           style: TextStyle(
        //             color: Colors.black,
        //             fontSize: 12,
        //             fontWeight: FontWeight.w600,
        //           ),
        //       ),
        //       SizedBox(height: 10,),
        //       Text(
        //         '109',
        //         style: TextStyle(
        //           color: Colors.white,
        //           fontSize: 15,
        //           fontWeight: FontWeight.w800,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // )
        // InfoCard(
        //   label: 'Patients',
        //   value: '$patients',
        // ),
        // const SizedBox(
        //   width: 15,
        // ),
        // InfoCard(
        //   label: 'Experiences',
        //   value: '$exp years',
        // ),
        // const SizedBox(
        //   width: 15,
        // ),
        // const InfoCard(
        //   label: 'Rating',
        //   value: '4.6',
        // ),
      ],
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key, required this.label, required this.value})
      : super(key: key);

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Config.primaryColor,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 15,
        ),
        child: Column(
          children: <Widget>[
            Text(
              label,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}