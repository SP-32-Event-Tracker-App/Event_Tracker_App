import 'package:event_tracker_app/widgets/home_page.dart';
import 'package:flutter/material.dart';

class EventDetailPage extends StatelessWidget {
  const EventDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GestureDetector(
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 70,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.indigo,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/avatar.jpg'),
                          radius: 20.0,
                        ),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/avatar.jpg'),
                          radius: 20.0,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("+20 Going"),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Invite"),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
                width: 15,
              ),
              Text(
                "Senior Project Meeting",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.indigo,
                      ),
                      child: Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("02 November, 2023"),
                          Text("5:00 - 6:15 PM"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.indigo,
                      ),
                      child: Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Atrium Building"),
                          Text("3453 Busbee DR NW"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "About Event",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Deux œufs spaghetti Deux œufs spaghetti mayonnaise Deux œufs spaghetti turn am fine Il y a des gens qui veulent ma mort ohAboki walaï bilaï Deux œufs spaghetti muah Deux œuf spaghetti condiments muahDeux œufs spaghetti turn am fine Il y a des gens qui veulent ma mort oh Deux œufs spaghetti Two eggs spaghettiSmall pepper with beansTwo eggs spaghetti Mayonnaise with sardine, Deux œufs spaghetti Deux œufs spaghetti mayonnaise,Deux œufs spaghetti Deux œufs spaghetti mayonnaise,Deux œufs spaghetti Deux œufs spaghetti mayonnaise. STEEVE MOCTO",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 14,
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
