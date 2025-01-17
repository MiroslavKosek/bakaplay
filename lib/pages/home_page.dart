import 'package:bakaplay/components/navbar.dart';
import 'package:bakaplay/components/theme_switch_tile.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  //final user = FirebaseAuth.instance.currentUser!;

  // sign user out method
  /*void signUserOut() {
    FirebaseAuth.instance.signOut();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        actions: const [
          /*IconButton(
            onPressed: signUserOut,
            icon: const Icon(Icons.logout),
            color: Theme.of(context).colorScheme.onSurface,
          )*/
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*Text(
              "LOGGED IN",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.onSurface),
            ),
            
            const SizedBox(height: 10),

            Text(
              user.email!,
              style: TextStyle(fontSize: 20, color: Theme.of(context).colorScheme.onSurface),
            ),

            const SizedBox(height: 10),*/

            ThemeSwitchTile()
          ],
        ),
      ),
      bottomNavigationBar: const Navbar(),
    );
  }
}
