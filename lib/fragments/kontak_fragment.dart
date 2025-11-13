import 'package:flutter/material.dart';

class Contact {
  final String name;
  final String phone;
  final String avatar;

  Contact({required this.name, required this.phone, required this.avatar});
}

class KontakFragment extends StatelessWidget {
  const KontakFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Contact> contacts = [
      Contact(name: 'Andi Pratama', phone: '081234567890', avatar: 'A'),
      Contact(name: 'Budi Santoso', phone: '081234567891', avatar: 'B'),
      Contact(name: 'Citra Dewi', phone: '081234567892', avatar: 'C'),
      Contact(name: 'Deni Kurniawan', phone: '081234567893', avatar: 'D'),
      Contact(name: 'Eka Putri', phone: '081234567894', avatar: 'E'),
      Contact(name: 'Fajar Ahmad', phone: '081234567895', avatar: 'F'),
      Contact(name: 'Gita Sari', phone: '081234567896', avatar: 'G'),
      Contact(name: 'Hendra Wijaya', phone: '081234567897', avatar: 'H'),
      Contact(name: 'Indah Permata', phone: '081234567898', avatar: 'I'),
      Contact(name: 'Joko Susilo', phone: '081234567899', avatar: 'J'),
      Contact(name: 'Karina Putri', phone: '081234567800', avatar: 'K'),
      Contact(name: 'Lukman Hakim', phone: '081234567801', avatar: 'L'),
      Contact(name: 'Maya Sari', phone: '081234567802', avatar: 'M'),
      Contact(name: 'Nur Hidayat', phone: '081234567803', avatar: 'N'),
      Contact(name: 'Oscar Ramadhan', phone: '081234567804', avatar: 'O'),
    ];

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kontak',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade800,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '${contacts.length} kontak tersimpan',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade600,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Cari kontak...',
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    prefixIcon: Icon(Icons.search, color: Colors.teal.shade600),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey.shade200, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.teal.shade400, width: 2),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              final contact = contacts[index];
              return Container(
                margin: const EdgeInsets.only(bottom: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.08),
                      blurRadius: 10,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [Colors.teal.shade400, Colors.teal.shade600],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.teal.withOpacity(0.3),
                          blurRadius: 8,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.transparent,
                      child: Text(
                        contact.avatar,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    contact.name,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Row(
                      children: [
                        Icon(
                          Icons.phone_android,
                          size: 14,
                          color: Colors.grey.shade500,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          contact.phone,
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green.shade50,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.phone, color: Colors.green.shade600, size: 22),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Row(
                                  children: [
                                    const Icon(Icons.phone, color: Colors.white, size: 20),
                                    const SizedBox(width: 10),
                                    Text('Memanggil ${contact.name}...'),
                                  ],
                                ),
                                backgroundColor: Colors.green.shade600,
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                duration: const Duration(seconds: 2),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(width: 4),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.teal.shade50,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.message, color: Colors.teal.shade600, size: 22),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Row(
                                  children: [
                                    const Icon(Icons.message, color: Colors.white, size: 20),
                                    const SizedBox(width: 10),
                                    Text('Mengirim pesan ke ${contact.name}...'),
                                  ],
                                ),
                                backgroundColor: Colors.teal.shade600,
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                duration: const Duration(seconds: 2),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}