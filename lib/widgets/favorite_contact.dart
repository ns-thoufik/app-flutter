import 'package:flutter/material.dart';

import '../models/message_model.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                'Favorite Contacts',
                style: TextStyle(
                  color: Color.fromARGB(255, 28, 43, 50),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.more_horiz,
                ),
                iconSize: 30.0,
                color: Color.fromARGB(255, 45, 63, 72),
                onPressed: (() {}),
              ),
            ],
          ),
        ),
        Container(
            height: 120.0,
            color: Color.fromARGB(255, 255, 255, 255),
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: favorites.length,
              itemBuilder: (BuildContext, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage(favorites[index].imageUrl),
                      ),
                      const SizedBox(height: 6.0),
                      Text(
                        favorites[index].name,
                        style: const TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ))
      ],
    );
  }
}
