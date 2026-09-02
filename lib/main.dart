import 'package:flutter/material.dart';
import 'dart:html' as html;

void main() {
  runApp(const CilacapSatuApp());
}

class CilacapSatuApp extends StatelessWidget {
  const CilacapSatuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cilacap SATU',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Arial',
      ),
      home: const DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      body: SafeArea(
  child: Stack(
    children: [
      // BACKGROUND PC
if (MediaQuery.sizeOf(context).width >= 700)
  Positioned(
    top: 0,
    right: 0,
    width: 800,
    height: 800,
    child: IgnorePointer(
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.transparent,
              Colors.white,
            ],
            stops: [0.0, 0.85],
          ).createShader(bounds);
        },
        blendMode: BlendMode.dstIn,
        child: Opacity(
          opacity: 0.35,
          child: Image.asset(
            'assets/images/background_cilacap.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
  ),

      // KONTEN UTAMA
      Center(
    child: ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 1400,
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(30),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // HEADER
                LayoutBuilder(
  builder: (context, constraints) {
    final isMobile = constraints.maxWidth < 600;

    return Image.asset(
      'assets/images/logo_bpjs.png',
      width: isMobile ? constraints.maxWidth : 600,
      fit: BoxFit.contain,
    );
  },
),
                const SizedBox(height: 20),

// TITLE
Builder(
  builder: (context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    final titleSize = screenWidth < 600 ? 36.0 : 48.0;
    final subtitleSize = screenWidth < 600 ? 22.0 : 28.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'CILACAP ',
                style: TextStyle(
                  fontSize: titleSize,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF123B70),
                ),
              ),
              TextSpan(
                text: 'SATU',
                style: TextStyle(
                  fontSize: titleSize,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF009B4D),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 5),

        Text(
          'Satu Pintu',
          style: TextStyle(
            fontSize: subtitleSize,
            color: const Color(0xFF334155),
          ),
        ),
      ],
    );
  },
),

                const SizedBox(height: 15),

                const Text(
                  'Akses cepat kebutuhan kerja tim dalam satu aplikasi.',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFF475569),
                  ),
                ),

                const SizedBox(height: 30),

                // MENU TITLE
                const Row(
                  children: [
                    Icon(
                      Icons.grid_view_rounded,
                      color: Color(0xFF009B4D),
                    ),

                    SizedBox(width: 10),

                    Text(
                      'Menu Utama',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // MENU
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: const [

                    MenuCard(
  icon: Icons.bar_chart_rounded,
  title: 'KaCa Faskes Cilacap',
  description:
      'Kawal Capaian Faskes Cilacap',
  color: Color(0xFF009B4D),
  url:
      'https://docs.google.com/spreadsheets/d/16bLQCnZjqAJz2Dyg0B5y7YB5qf9iryy-saueAkeGZEg/edit?gid=0#gid=0',

),

                    MenuCard(
  icon: Icons.child_care_rounded,
  title: 'Data Pendaftaran BBL',
  description:
      'Data Pendaftaran BBL via SIPP FKTP Kabupaten Cilacap',
  color: Color(0xFF1557B0),
  url:
      'https://docs.google.com/spreadsheets/d/1gDOAPgnEMdARxX0DcvzNQxJraUEwsIfSyw7vkeImX8I/edit?gid=0#gid=0',
),

                    MenuCard(
                      icon: Icons.piano_rounded,
                      title: 'PIANO FALSETTO',
                      description:
                          'Pemantauan Implementasi Antrean Online Fasilitas Kesehatan Cabang Purwokerto',
                      color: Color(0xFF4C1D95),
                      url:
    'https://sites.google.com/view/pianofalsetto/beranda',
                    ),

                    MenuCard(
                      icon: Icons.groups_rounded,
                      title: 'Daftar PIC FKTP',
                      description:
                          'Daftar PIC FKTP Kabupaten Cilacap',
                      color: Color(0xFF009B8D),
                      url:
    'https://docs.google.com/spreadsheets/d/1vvamIUAguFcFgrLoO27-d5Vn4VchzKyE9FOXPl8bQCU/edit?gid=0#gid=0',
    
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                // INFO
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.78),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: Color(0xFF1557B0),
                        size: 30,
                      ),

                      SizedBox(width: 15),

                      Expanded(
                        child: Text(
                          'Pastikan koneksi internet Anda stabil untuk mengakses data dengan optimal.',
                          style: TextStyle(
                            color: Color(0xFF475569),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // FOOTER
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: const Color(0xFF123B70),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'Cilacap SATU\n'
                    'Satu Pintu, Satu Akses, Satu Tujuan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    ],
    )
      )
    );
  }
}


// ===============================
// MENU CARD
// ===============================

class MenuCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String description;
  final Color color;
  final String url;

  const MenuCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.color,
    required this.url,
  });

  @override
  State<MenuCard> createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.sizeOf(context).width;
    final double cardWidth = screenWidth < 800
    ? screenWidth - 60
    : 600;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        width: cardWidth,
        height: 200,
        transform: Matrix4.translationValues(
          0,
          _isHovered ? -6 : 0,
          0,
        ),
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.50),
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(
                _isHovered ? 0.12 : 0.06,
              ),
              blurRadius: _isHovered ? 22 : 15,
              offset: Offset(
                0,
                _isHovered ? 10 : 6,
              ),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: widget.color.withOpacity(0.10),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Icon(
                    widget.icon,
                    color: widget.color,
                    size: 38,
                  ),
                ),

                const SizedBox(width: 18),

                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0F172A),
                        ),
                      ),

                      const SizedBox(height: 8),

                      Text(
                        widget.description,
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.4,
                          color: widget.color,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const Spacer(),

            InkWell(
              onTap: () {
                html.window.open(
                  widget.url,
                  '_blank',
                );
              },
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: widget.color.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Buka',
                      style: TextStyle(
                        color: widget.color,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Icon(
                      Icons.arrow_forward_rounded,
                      color: widget.color,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}