import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40), // Jarak atas
            CircleAvatar(
              radius: 80, // Ukuran profil yang lebih besar
              backgroundImage: AssetImage('assets/images/profile.jpeg'), // Pastikan path gambar sesuai
            ),
            SizedBox(height: 20), // Jarak antara gambar dan teks
            Text(
              "Shahibul Wafa",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Divider(thickness: 1.5, indent: 40, endIndent: 40),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Contact Information",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.email, color: Colors.blueAccent),
                      SizedBox(width: 10),
                      Text(
                        "Email: 2106126@itg.ac.id",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.phone, color: Colors.blueAccent),
                      SizedBox(width: 10),
                      Text(
                        "Phone: +62 666 2106126",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.blueAccent),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "Address: Jl. A.yani No:399. Garut, Indonesia",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
