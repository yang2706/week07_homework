
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    ),
  );
}


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Favorite cards',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),

      body: Column(
        children: const [
          FavoriteCard(),
          Divider(height: 1),

          FavoriteCard(),
          Divider(height: 1),

          FavoriteCard(),
          Divider(height: 1),
        ],
      ),
    );
  }
}

// PART 3: Stateful FavoriteCard
class FavoriteCard extends StatefulWidget {
  

  const FavoriteCard({
    super.key,
    
  });

  @override
  State<FavoriteCard> createState() {
   return _FavoriteCardState();
  }
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'title',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'description',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          IconButton(
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.red : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
