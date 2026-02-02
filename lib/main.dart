import 'package:flutter/material.dart';

void main() {
  runApp(const WhatsAppClone());
}

class WhatsAppClone extends StatelessWidget {
  const WhatsAppClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF075E54),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF065E54),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'WhatsApp',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: const [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 16),
            Icon(Icons.search),
            SizedBox(width: 16),
            Icon(Icons.more_vert),
            SizedBox(width: 8),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ChatsTab(),
            StatusTab(),
            CallsTab(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFF25D366),
          onPressed: () {},
          child: const Icon(Icons.message),
        ),
      ),
    );
  }
}

class ChatsTab extends StatelessWidget {
  const ChatsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 12,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text(
            'Contact ${index + 1}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: const Text('Hey! This is a sample message'),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                '12:45 PM',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        );
      },
    );
  }
}

class StatusTab extends StatelessWidget {
  const StatusTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.green,
            child: Icon(Icons.add, color: Colors.white),
          ),
          title: Text('My Status'),
          subtitle: Text('Tap to add status update'),
        ),
        Divider(),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text('Contact 1'),
          subtitle: Text('Today, 9:00 AM'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text('Contact 2'),
          subtitle: Text('Yesterday, 6:30 PM'),
        ),
      ],
    );
  }
}

class CallsTab extends StatelessWidget {
  const CallsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text('Contact 1'),
          subtitle: Text('Missed call'),
          trailing: Icon(Icons.call, color: Colors.green),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text('Contact 2'),
          subtitle: Text('Outgoing call'),
          trailing: Icon(Icons.videocam, color: Colors.green),
        ),
      ],
    );
  }
}
