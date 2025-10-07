import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // Bagian title
  Widget titleSection = Container(
    padding: const EdgeInsets.all(32.0),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: const Text(
                  'Pines Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                'Rocky Mountains, USA',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        const Icon(Icons.star, color: Color.fromARGB(255, 231, 6, 6)),
        const Text('41'),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    // Bagian tombol
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // Bagian teks deskripsi
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Terletak di tepi danau yang dikelilingi hutan pinus dan pegunungan, '
        'Danau Pines Campground menawarkan pengalaman berkemah yang tenang dan menenangkan. '
        'Saat malam tiba, langit dipenuhi bintang dan suasana hangat api unggun menemani percakapan '
        'di antara tenda-tenda. Tempat ini menjadi pilihan sempurna untuk menikmati keindahan alam '
        'dan ketenangan jauh dari keramaian.\n\n'
        'Karya Rheina Putri Ferdiansyah 2341760084'
      ),
    );

    return MaterialApp(
      title: 'Flutter Layout: Rheina Putri Ferdiansyah (2341760084)',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout Demo')),
        body: ListView(
          children: [
            Image.asset(
              'images/campground.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  // Fungsi helper untuk membuat tombol
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
