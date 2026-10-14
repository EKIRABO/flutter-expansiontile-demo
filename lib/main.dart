
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ExpansionTile Demo',
      theme: ThemeData(
        colorSchemeSeed: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: const HelpCenterScreen(),
    );
  }
}

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Help Center'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        centerTitle: true,

      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          
          ExpansionTile(
            leading: const Icon(
              Icons.school,
              color: Colors.deepPurple,
            ),

            title: const Text('What is Flutter?'),

            subtitle: const Text('Tap to learn more'),

            initiallyExpanded: true,

           
            backgroundColor: Colors.deepPurple.shade50,

            
            iconColor: Colors.deepPurple,

            children: const [
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Flutter is an open-source framework '
                  'used to build applications for '
                  'mobile, web, and desktop.',
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

     
          ExpansionTile(
            leading: const Icon(
              Icons.expand_more,
              color: Colors.deepPurple,
            ),

            title: const Text(
              'What is an ExpansionTile?',
            ),

            subtitle: const Text(
              'Learn about this Flutter widget',
            ),

            backgroundColor: Colors.deepPurple.shade50,

            iconColor: Colors.deepPurple,
            children: const [
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'ExpansionTile is a Flutter widget '
                  'that expands and collapses to show '
                  'or hide additional content.',
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          ExpansionTile(
            leading: const Icon(
              Icons.lightbulb,
              color: Colors.deepPurple,
            ),

            title: const Text(
              'Why use ExpansionTile?',
            ),

            subtitle: const Text(
              'Discover its benefits',
            ),

            backgroundColor: Colors.deepPurple.shade50,
            iconColor: Colors.deepPurple,
            children: const [
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'ExpansionTile helps organize '
                  'information, saves screen space, '
                  'and makes applications easier '
                  'to navigate.',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
