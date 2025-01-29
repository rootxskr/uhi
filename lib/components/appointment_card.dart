import 'package:flutter/material.dart';
import 'package:uhi/utils/config.dart';

class AppointmentCard extends StatefulWidget {
  const AppointmentCard({Key? key}): super(key: key);

  @override
  State<AppointmentCard> createState() => _AppointmentCardState();
}

class _AppointmentCardState extends State<AppointmentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Config.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: Padding(
            padding: const EdgeInsets.all(20),
           child: Column(
            children: <Widget>[
              const Row(
                children: [
                  const CircleAvatar(
                    backgroundImage:
                    AssetImage('assets/doctor_1.jpg'), //inserting doctor profile Photo here
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Dr Hemanth Jain',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Dental',
                        style: TextStyle(color: Colors.black87),
                      ),
                    ],
                  ),
                ],
              ),
              Config.spaceSmall,
              //schedule info here
              const ScheduleCard(),
              Config.spaceSmall,
              //action button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        child: const Text(
                          'Cancel',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: const Text(
                        'Completed',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              )
            ],
        ),
        ),
      ),
    );
  }
}


//Schedule Widget
class ScheduleCard extends StatelessWidget {
  const ScheduleCard({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
  return Container(
  decoration: BoxDecoration(
  color: Colors.grey.shade700,
  borderRadius: BorderRadius.circular(10),
  ),
  width: double.infinity,
  padding: const EdgeInsets.all(20),
  child: Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>[
   Icon(
  Icons.calendar_today,
  color: Colors.white,
  size: 15,
  ),
   SizedBox(
  width: 5,
  ),
  Text(
  'Monday, 01/24/2025',
  style: const TextStyle(
  color: Colors.white,
  ),
  ),
   SizedBox(
  width: 20,
  ),
   Icon(
  Icons.access_alarm,
  color: Colors.white,
  size: 17,
  ),
  SizedBox(
  width: 5,
  ),
  Flexible(
  child: Text(
  '2:00 PM',
  style: const TextStyle(
  color: Colors.white),
  ))
  ],
  ),
  );
  }
}

//Appointment Card is DONE
//the information/data here will be replaced by API data after database setup

