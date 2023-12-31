import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('This is User Profile'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              ClipOval(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  
                  child: Image.asset("assete/download.jpg", fit: BoxFit.fitHeight,),
                ),
              ),
 const  Padding(padding: EdgeInsets.all(7)),
             const Text("""   
In the serene landscapes where rolling hills meet the horizon, the resilient goat emerges as a symbol of tenacity and adaptability. With its gentle demeanor and curious gaze, the goat captures our hearts in the first encounter. Its agile hooves traverse the rugged terrains, embodying a spirit untamed yet gentle. Beyond its charming exterior lies a creature of profound utility—a source of nourishment, fiber, and companionship. Domesticated for centuries, goats have woven themselves into the fabric of human civilization, contributing to sustainable agriculture and vibrant cultures worldwide. These remarkable animals exhibit a remarkable range of personalities, from the spirited playfulness of kids to the wisdom in the eyes of seasoned elders. With their unique charm and versatility, goats stand as enduring symbols of resilience, embodying the harmony between humanity and nature in the tapestry of our shared existence.""",
textAlign: TextAlign.left,

)
            ],
          ),
        ),
      ),
    ));
  }
}
