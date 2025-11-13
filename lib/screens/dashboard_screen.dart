import 'package:flutter/material.dart';
import '../fragments/biodata_fragment.dart';
import '../fragments/kontak_fragment.dart';
import '../fragments/kalkulator_fragment.dart';
import '../fragments/cuaca_fragment.dart';
import '../fragments/berita_fragment.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  final List<Widget> _fragments = [
    const BiodataFragment(),
    const KontakFragment(),
    const KalkulatorFragment(),
    const CuacaFragment(),
    const BeritaFragment(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UTS Mobile App', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.teal.shade400,
        centerTitle: true,
        elevation: 2,
      ),
      body: _fragments[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.teal.shade400,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Biodata',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: 'Kontak',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Kalkulator',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud),
            label: 'Cuaca',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Berita',
          ),
        ],
      ),
    );
  }
}