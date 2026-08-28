import 'package:booking/hotel_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen()),
  );
}

class HotelDestination {
  final String title;
  final String imageUrl;

  const HotelDestination({required this.title, required this.imageUrl});
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<HotelDestination> destinations = const [
    HotelDestination(
      title: 'Sharm El Shikh',
      imageUrl:
          'https://images.unsplash.com/photo-1540555700478-4be289fbecef?w=600&q=80',
    ),
    HotelDestination(
      title: 'Alexandria',
      imageUrl:
          'https://images.unsplash.com/photo-1582719478250-c89cae4dc85b?w=600&q=80',
    ),
    HotelDestination(
      title: 'Dahab',
      imageUrl:
          'https://images.unsplash.com/photo-1571896349842-33c89424de2d?w=600&q=80',
    ),
    HotelDestination(
      title: 'Marasy',
      imageUrl:
          'https://images.unsplash.com/photo-1566073771259-6a8506099945?w=600&q=80',
    ),
    HotelDestination(
      title: 'Nile',
      imageUrl:
          'https://images.unsplash.com/photo-1590490360182-c33d57733427?w=600&q=80',
    ),
    HotelDestination(
      title: 'Aswan',
      imageUrl:
          'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?w=600&q=80',
    ),
    HotelDestination(
      title: 'Hurghada',
      imageUrl:
          'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=600&q=80',
    ),
    HotelDestination(
      title: 'Marsa Alam',
      imageUrl:
          'https://images.unsplash.com/photo-1519046904884-53103b34b206?w=600&q=80',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 164, 201, 252),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 14),
              decoration: BoxDecoration(
                color: const Color(0xFF074882),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  'Available Hotels',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 14,
                childAspectRatio: 0.72,
              ),
              itemCount: destinations.length,
              itemBuilder: (context, index) {
                final item = destinations[index];
                return HotelCard(item: item);
              },
            ),
          ),
        ],
      ),
    );
  }
}
