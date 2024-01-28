import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: const Center(child: Text('Dashboard')),
    );
  }
}







































// // ignore: unused_import

// import 'package:flutter/material.dart';

// class DashboardPage extends StatefulWidget {
//   static String tag = 'dashboard-page';

//   @override
//   State<DashboardPage> createState() => _DashboardPageState();
// }

// class _DashboardPageState extends State<DashboardPage> {
//   @override 
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             'Dashboard',
//              style: TextStyle(color: Colors.white),
//     ),
//     backgroundColor: Colors.grey[900],
//     ),
//     body: SingleChildScrollView(
//       child: Stack(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 30.0),
//             child: Column(
//                   children: [
//                     // Membuat container yang berisi beberapa menu
//                     Container(
//                       height: 100,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           // Menu 1
//                           _buildMenu(
//                             icon: Icons.access_time,
//                             title: 'Menu 1',
//                           ),
//                           // Menu 2
//                           _buildMenu(
//                             icon: Icons.settings,
//                             title: 'Menu 2',
//                           ),
//                           // Menu 3
//                           _buildMenu(
//                             icon: Icons.notifications,
//                             title: 'Menu 3',
//                           ),
//                         ],
//                       ),
//                     ),
//                     // Spacer untuk memberi jarak di antara menu dan konten lainnya
//                     Spacer(),
//                     // Konten utama atau informasi lainnya dapat ditambahkan di sini
//                     // Misalnya, daftar data atau widget lainnya
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Fungsi untuk membangun menu
//   Widget _buildMenu({required IconData icon, required String title}) {
//     return Column(
//       children: [
//         Icon(
//           icon,
//           size: 40,
//           color: const Color.fromARGB(255, 25, 58, 84),
//         ),
//         SizedBox(height: 8),
//         Text(
//           title,
//           style: TextStyle(
//             fontSize: 12,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ],
//     );
//   }
// }