import 'package:flutter/material.dart';

void main() => runApp(AppEasyDiet());

class AppEasyDiet extends StatelessWidget {
  const AppEasyDiet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Easy Diet',
      home: Platillo(),
    );
  }
} // fin clase AppEasyDiet

class Platillo extends StatelessWidget {
  const Platillo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Easy Diet"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 104, 105, 93),
        actions: [
          Icon(Icons.more),
          
          Icon(Icons.cabin)
        ],

      ),
      drawer: Drawer(),
      body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center, // Centrado vertical
    children: [
      Container(
        width: 320,
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        decoration: BoxDecoration(
          // Degradado en tonos rojo oscuro
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF660000), 
              Color(0xFF330000),
            ],
          ),
          borderRadius: BorderRadius.circular(25),
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 15,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Ajusta el tamaño al contenido
          children: const [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              // Imagen de la red
              backgroundImage: NetworkImage('https://raw.githubusercontent.com/LuisABC08/IAMoviles_Act5_appBarCard_Gpo_6i/refs/heads/main/luis.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Luis Cazares',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Gerente de ventas',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white, // Blanco con opacidad
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
),

    );
  }
}// fin clase Platillo