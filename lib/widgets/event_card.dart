import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        width: 300,
        height: 310,
        child: Card(
          elevation: 4.0,
          margin: const EdgeInsets.all(16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Container(
            margin: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Container(
                      height: 150,
                      width: 252,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/background.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.white70,
                              ),
                              child: Column(children: [
                                Text(
                                  "10",
                                  style: TextStyle(
                                    color: Colors.red.shade300,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "AUGUST",
                                  style: TextStyle(
                                    color: Colors.red.shade300,
                                  ),
                                ),
                              ]),
                            ),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.white70,
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.bookmark),
                                onPressed: () {
                                  // Handle bookmark action
                                },
                                color: Colors.red.shade100,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text("Senior Project Meeting Unlimited"),
                SizedBox(height: 8),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/avatar.jpg'),
                      radius: 20.0,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/avatar.jpg'),
                      radius: 20.0,
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.location_on),
                    Text("1044 Chastain Pointe, GA")
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
