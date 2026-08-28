import 'package:flutter/material.dart';
import 'package:whatsapp/bottom_input.dart';
import 'package:whatsapp/image_massege.dart';
import 'package:whatsapp/massege.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: const Color(0xFF147D3B),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 20),
          onPressed: () {},
        ),
        titleSpacing: 0,
        title: Row(
          children: [
            const CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=11'),
            ),
            const SizedBox(width: 10),
            const Text(
              'Ahmed Ali',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.call_outlined,
              color: Colors.white,
              size: 22,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.videocam_outlined,
              color: Colors.white,
              size: 24,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            child: Image.asset(
              'images/1.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 12,
                  ),
                  children: [
                    Massages(text: "Hello !", isMe: false),
                    Massages(text: "Hello !", isMe: true),
                    Massages(
                      text:
                          "Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It's like the universe loves to surprise us when we least expect it!",
                      isMe: false,
                    ),
                    ImageMassege(
                      title: "what a Great Content Tp learn Flutter",
                      imageUrl:
                          "https://images.unsplash.com/photo-1581291518857-4e27b48ff24e?w=500&q=80",
                      isMe: false,
                    ),
                    Massages(
                      text: "what a Great Content Tp learn Flutter",
                      isMe: true,
                    ),
                  ],
                ),
              ),
              BottomInputArea(),
            ],
          ),
        ],
      ),
    );
  }
}
