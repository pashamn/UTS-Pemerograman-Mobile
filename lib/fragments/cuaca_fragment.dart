import 'package:flutter/material.dart';

class CuacaFragment extends StatelessWidget {
  const CuacaFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.teal.shade400, Colors.teal.shade700],
              ),
            ),
            child: Column(
              children: [
                const Text(
                  'Bandung',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Rabu, 13 November 2024',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                const SizedBox(height: 30),
                const Icon(Icons.wb_sunny, size: 100, color: Colors.yellow),
                const SizedBox(height: 20),
                const Text(
                  '28°C',
                  style: TextStyle(
                    fontSize: 72,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Cerah Berawan',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                _buildWeatherInfo('Kelembaban', '65%', Icons.water_drop),
                const SizedBox(height: 12),
                _buildWeatherInfo('Kecepatan Angin', '12 km/h', Icons.air),
                const SizedBox(height: 12),
                _buildWeatherInfo('Tekanan Udara', '1013 hPa', Icons.speed),
                const SizedBox(height: 12),
                _buildWeatherInfo('UV Index', '7 (Tinggi)', Icons.wb_sunny_outlined),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Prakiraan 5 Hari',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _ForecastItem('Sen', Icons.wb_sunny, '29°'),
                    _ForecastItem('Sel', Icons.cloud, '27°'),
                    _ForecastItem('Rab', Icons.cloud_queue, '26°'),
                    _ForecastItem('Kam', Icons.wb_cloudy, '25°'),
                    _ForecastItem('Jum', Icons.thunderstorm, '24°'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWeatherInfo(String label, String value, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, size: 32, color: Colors.teal),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.teal,
            ),
          ),
        ],
      ),
    );
  }
}

class _ForecastItem extends StatelessWidget {
  final String day;
  final IconData icon;
  final String temp;

  const _ForecastItem(this.day, this.icon, this.temp);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(day, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Icon(icon, size: 32, color: Colors.orange),
        const SizedBox(height: 8),
        Text(temp, style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}