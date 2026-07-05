import 'package:flutter/material.dart';

void main() {
  runApp(const ClashRoyaleApp());
}

class ClashRoyaleApp extends StatelessWidget {
  const ClashRoyaleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FormularioPantallap(),
    );
  }
}

class FormularioPantallap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,

      body: SafeArea(
        child: Column(
          children: [
            // BARRA SUPERIOR
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _topBox("1406"),

                  _topBox("1 124 298 🪙"),

                  _topBox("1763 💎"),
                ],
              ),
            ),

            // PERFIL
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue.shade700,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(Icons.person, size: 80, color: Colors.white),

                  SizedBox(width: 10),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kristal",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Text(
                        "8680 🏆",
                        style: TextStyle(color: Colors.yellow, fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue.shade700,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(Icons.person, size: 80, color: Colors.white),

                  SizedBox(width: 10),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lizzy",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Text(
                        "6334 🏆",
                        style: TextStyle(color: Colors.yellow, fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Spacer(),

            // ARENA CENTRAL
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(Icons.stadium, size: 120, color: Colors.white),
            ),

            SizedBox(height: 30),

            // BOTON BATALLA
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                minimumSize: Size(250, 70),
              ),
              onPressed: () {},
              child: Text(
                "BATALLA",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

            Spacer(),
          ],
        ),
      ),

      // MENU INFERIOR
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.blueGrey,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.inventory), label: "Cofres"),

          BottomNavigationBarItem(icon: Icon(Icons.style), label: "Cartas"),

          BottomNavigationBarItem(
            icon: Icon(Icons.sports_martial_arts),
            label: "Batalla",
          ),

          BottomNavigationBarItem(icon: Icon(Icons.group), label: "Clan"),

          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events),
            label: "Eventos",
          ),
        ],
      ),
    );
  }

  Widget _topBox(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.black38,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
