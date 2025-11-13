import 'package:flutter/material.dart';

class News {
  final String title;
  final String source;
  final String time;
  final IconData icon;

  News({
    required this.title,
    required this.source,
    required this.time,
    required this.icon,
  });
}

class BeritaFragment extends StatelessWidget {
  const BeritaFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<News> newsList = [
      News(
        title: 'Teknologi AI Terbaru Mengubah Industri Pendidikan',
        source: 'Tech News',
        time: '2 jam yang lalu',
        icon: Icons.smartphone,
      ),
      News(
        title: 'Perkembangan Flutter 4.0 Dirilis dengan Fitur Baru',
        source: 'Developer Weekly',
        time: '4 jam yang lalu',
        icon: Icons.laptop_mac,
      ),
      News(
        title: 'Tips Belajar Pemrograman untuk Pemula',
        source: 'Education Today',
        time: '6 jam yang lalu',
        icon: Icons.menu_book,
      ),
      News(
        title: 'Startup Indonesia Raih Pendanaan Rp 100 Miliar',
        source: 'Business Indonesia',
        time: '8 jam yang lalu',
        icon: Icons.attach_money,
      ),
      News(
        title: 'Tren Mobile Development di Tahun 2024',
        source: 'Mobile Dev',
        time: '10 jam yang lalu',
        icon: Icons.phone_android,
      ),
      News(
        title: 'Keamanan Aplikasi Mobile: Yang Perlu Diketahui',
        source: 'Security News',
        time: '12 jam yang lalu',
        icon: Icons.lock,
      ),
      News(
        title: 'Google Umumkan Update Android Terbaru',
        source: 'Android Authority',
        time: '14 jam yang lalu',
        icon: Icons.android,
      ),
      News(
        title: 'UI/UX Design Trends untuk Mobile Apps',
        source: 'Design Weekly',
        time: '16 jam yang lalu',
        icon: Icons.palette,
      ),
      News(
        title: 'Cara Optimasi Performa Aplikasi Flutter',
        source: 'Flutter Community',
        time: '18 jam yang lalu',
        icon: Icons.flash_on,
      ),
      News(
        title: 'Mahasiswa ITN Bandung Juara Hackathon Nasional',
        source: 'Campus News',
        time: '20 jam yang lalu',
        icon: Icons.emoji_events,
      ),
      News(
        title: 'Cloud Computing untuk Developer Pemula',
        source: 'Cloud Magazine',
        time: '22 jam yang lalu',
        icon: Icons.cloud,
      ),
      News(
        title: 'Integrasi AI dalam Aplikasi Mobile Modern',
        source: 'AI Today',
        time: '1 hari yang lalu',
        icon: Icons.smart_toy,
      ),
      News(
        title: 'Best Practices Clean Code di Flutter',
        source: 'Code Quality',
        time: '1 hari yang lalu',
        icon: Icons.auto_awesome,
      ),
      News(
        title: 'Karir Developer Mobile: Prospek dan Gaji',
        source: 'Career Guide',
        time: '1 hari yang lalu',
        icon: Icons.work,
      ),
      News(
        title: 'Workshop Pemrograman Mobile di Bandung',
        source: 'Event Tech',
        time: '2 hari yang lalu',
        icon: Icons.school,
      ),
    ];

    return ListView.builder(
      itemCount: newsList.length,
      itemBuilder: (context, index) {
        final news = newsList[index];
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: ListTile(
            contentPadding: const EdgeInsets.all(12),
            leading: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.teal.shade100,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                news.icon,
                size: 32,
                color: Colors.teal.shade700,
              ),
            ),
            title: Text(
              news.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                children: [
                  Text(
                    news.source,
                    style: TextStyle(
                      color: Colors.teal.shade700,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '• ${news.time}',
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Membuka: ${news.title}')),
              );
            },
          ),
        );
      },
    );
  }
}