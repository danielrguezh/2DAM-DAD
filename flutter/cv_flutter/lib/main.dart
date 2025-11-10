import 'package:flutter/material.dart';

void main() {
  runApp(const CVApp());
}

class CVApp extends StatelessWidget {
  const CVApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CV Pedro Fernández',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: const CVScreen(),
      debugShowCheckedModeBanner: false,
    );
  }

}

class CVScreen extends StatelessWidget {
  const CVScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 900),
          margin: const EdgeInsets.all(16),
          child: Card(
            elevation: 8,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left Section - Dark Sidebar
                Expanded(
                  flex: 35,
                  child: Container(
                    color: Colors.grey[850],
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Profile Image
                        Center(
                          child: Container(
                            width: 200,
                            height: 240,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 3),
                            ),
                            padding: const EdgeInsets.all(6),
                            child: Container(
                              color: Colors.grey[300],
                              child: Center(
                                child: Image.asset('assets/images/image.png', fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        
                        // Profile Section
                        _buildSectionTitle('PERFIL PROFESIONAL'),
                        const SizedBox(height: 12),
                        const Text(
                          'Profesional con amplia experiencia en ventas y desarrollo de relaciones comerciales. Orientado a resultados con habilidades comprobadas en negociación y gestión de cuentas clave.',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white70,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 32),
                        
                        // Contact Section
                        _buildSectionTitle('CONTACTO'),
                        const SizedBox(height: 12),
                        _buildContactItem(Icons.email, 'holo@sticoincredible.com'),
                        const SizedBox(height: 12),
                        _buildContactItem(Icons.phone, '+1 (555) 123-4567'),
                        const SizedBox(height: 12),
                        _buildContactItem(Icons.location_on, 'Ciudad, País 12345'),
                        const SizedBox(height: 32),
                        
                        // Skills Section
                        _buildSectionTitle('HABILIDADES'),
                        const SizedBox(height: 12),
                        _buildSkillItem('Gestión de clientes'),
                        _buildSkillItem('Negociación comercial'),
                        _buildSkillItem('Análisis de mercado'),
                        _buildSkillItem('Estrategias de ventas'),
                        _buildSkillItem('CRM y herramientas digitales'),
                        _buildSkillItem('Trabajo en equipo'),
                      ],
                    ),
                  ),
                ),
                
                // Right Section - Content
                Expanded(
                  flex: 65,
                  child: SingleChildScrollView(
                    //padding: const EdgeInsets.all(32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Name and Title Header
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(50),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.zero,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pedro Fernández',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[800],
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Ejecutivo de ventas',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 32),
                        // Experience Section
                        const SizedBox(height: 24),
                        
                        // Job 1
                        _buildExperienceItem(
                          title: 'Ejecutivo de ventas',
                          company: 'Empresa Borcelle',
                          period: '2019-2023',
                          responsibilities: [
                            'Desarrollo y mantenimiento de cartera de clientes corporativos',
                            'Incremento del 35% en ventas anuales mediante estrategias innovadoras',
                            'Gestión de negociaciones comerciales de alto valor',
                          ],
                        ),
                        const SizedBox(height: 24),
                        
                        // Job 2
                        _buildExperienceItem(
                          title: 'Asesor de ventas',
                          company: 'Empresa Borcelle',
                          period: '2016-2019',
                          responsibilities: [
                            'Atención personalizada a clientes y prospección de nuevos mercados',
                            'Cumplimiento consistente de metas mensuales y trimestrales',
                            'Colaboración con equipos multifuncionales',
                          ],
                        ),
                        const SizedBox(height: 24),
                        
                        // Job 3
                        _buildExperienceItem(
                          title: 'Vendedor en línea',
                          company: 'Empresa Borcelle',
                          period: '2014-2016',
                          responsibilities: [
                            'Gestión de plataformas de e-commerce',
                            'Servicio al cliente digital y resolución de consultas',
                          ],
                        ),
                        const SizedBox(height: 32),
                        
                        // Education Section
                        Row(
                          children: [
                            const SizedBox(width: 8),
                            Text(
                              'ESTUDIOS SUPERIORES',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[800],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        
                        // Education 1
                        _buildEducationItem(
                          degree: 'Licenciatura en Administración',
                          institution: 'Universidad Borcelle',
                          period: '2010-2014',
                        ),
                        const SizedBox(height: 16),
                        
                        // Education 2
                        _buildEducationItem(
                          degree: 'Maestría en Finanzas',
                          institution: 'Universidad Borcelle',
                          period: '2016-2018',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      
    );
    
  }

  Widget _buildSectionTitle(String title) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.white30, width: 1),
        ),
      ),
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.white, size: 18),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.white70,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSkillItem(String skill) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        '• $skill',
        style: const TextStyle(
          fontSize: 13,
          color: Colors.white70,
        ),
      ),
    );
  }

  Widget _buildExperienceItem({
    required String title,
    required String company,
    required String period,
    required List<String> responsibilities,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(color: Colors.grey[700]!, width: 4),
        ),
      ),
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
                period,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[600],
                ),
          ),      
          const SizedBox(height: 4),
          Text(
            company,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(height: 8),
          ...responsibilities.map((resp) => Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text(
                  '• $resp',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[600],
                    height: 1.4,
                  ),
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildEducationItem({
  required String degree,
  required String institution,
  required String period,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(color: Colors.grey[700]!, width: 4),
        ),
      ),
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    period,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      degree,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    Text(
                      institution,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
  
}

class TriangleDecoration extends StatelessWidget {
  final Color color;
  final double size;
  final bool pointingRight;

  const TriangleDecoration({
    Key? key,
    required this.color,
    this.size = 20,
    this.pointingRight = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: TrianglePainter(
        color: color,
        pointingRight: pointingRight,
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  final Color color;
  final bool pointingRight;

  TrianglePainter({
    required this.color,
    required this.pointingRight,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();
    
    if (pointingRight) {
      // Triángulo apuntando a la derecha
      path.moveTo(0, 0);
      path.lineTo(size.width, size.height / 2);
      path.lineTo(0, size.height);
      path.close();
    } else {
      // Triángulo apuntando a la izquierda
      path.moveTo(size.width, 0);
      path.lineTo(0, size.height / 2);
      path.lineTo(size.width, size.height);
      path.close();
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}