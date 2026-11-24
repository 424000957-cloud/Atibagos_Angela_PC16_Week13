import 'package:flutter/material.dart';

void main() {
  runApp(const ShobeClawsWeek13App());
}

class ShobeClawsWeek13App extends StatelessWidget {
  const ShobeClawsWeek13App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shobe.claws',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFAF7F2),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF8C9B6E)),
        useMaterial3: true,
      ),
      home: const HomeStaticScreen(),
    );
  }
}

class HomeStaticScreen extends StatelessWidget {
  const HomeStaticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAF7F2),
        elevation: 0,
        title: const Text(
          'Shobe.claws',
          style: TextStyle(
            color: Color(0xFF3A3A3A),
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFFFAF3D6),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.notifications_none,
              color: Color(0xFF3A3A3A),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Promo Banner
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: const Color(0xFFF6DFE2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hello Gorgeous!',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF3A3A3A),
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'Treat your nails to a fresh, custom set today.',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF5A5A5A),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFF8C9B6E),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              'Book Now',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    ClipOval(
                      child: Image.asset(
                        'assets/images/treat_nails.jpg',
                        width: 85,
                        height: 85,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 22),

              // Section Title
              const Text(
                'Nail Services',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3A3A3A),
                ),
              ),
              const SizedBox(height: 12),

              // Service Categories Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildServiceItem(Icons.spa_outlined, 'Gel Mani'),
                  _buildServiceItem(Icons.auto_awesome_outlined, 'Extensions'),
                  _buildServiceItem(Icons.brush_outlined, 'Nail Art'),
                  _buildServiceItem(Icons.shield_outlined, 'BIAB'),
                ],
              ),
              const SizedBox(height: 22),

              // Popular Sets Header
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Sets',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3A3A3A),
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(fontSize: 13, color: Color(0xFF6B6B6B)),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Popular Sets Cards Row
              Row(
                children: [
                  Expanded(
                    child: _buildNailCard(
                      'assets/images/gel_manicure.jpg',
                      'Gel Manicure',
                      '₱650',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildNailCard(
                      'assets/images/gel_extension.jpg',
                      'Gel Extensions',
                      '₱1,200',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildServiceItem(IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: const Color(0xFFFAF3D6),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(icon, color: const Color(0xFF8C9B6E)),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(fontSize: 12, color: Color(0xFF3A3A3A)),
        ),
      ],
    );
  }

  Widget _buildNailCard(String imgPath, String title, String price) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.asset(
              imgPath,
              height: 110,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  price,
                  style: const TextStyle(
                    color: Color(0xFF8C9B6E),
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
