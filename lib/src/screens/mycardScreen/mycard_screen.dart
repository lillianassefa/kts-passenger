import 'package:flutter/material.dart';

class MyCardScreen extends StatelessWidget {
  final List<Map<String, dynamic>> _cardData = [
    {
      'image': 'assets/images/anbessa.png',
      'label': 'Anbessa ID',
      'icon1': Icons.notifications_active,
      'icon2': Icons.countertops,
      'value': '56.15',
      'color': Color(0xFFF87F5B),
    },
    {
      'image': 'assets/images/sheger.png',
      'label': 'Sheger ID',
      'icon1': Icons.notifications_active,
      'icon2': Icons.countertops,
      'value': '56.15',
      'color': Color(0xFFF87F5B),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 30),
      const Text(
        'Your Cards',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w900,
          fontStyle: FontStyle.italic,
        ),
      ),
      const SizedBox(height: 20),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: GridView.builder(
            itemCount: _cardData.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5.0,
              crossAxisSpacing: 1.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        _cardData[index]['image'],
                        fit: BoxFit.cover,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.label,
                          color: _cardData[index]['color'],
                        ),
                        Text(
                          _cardData[index]['label'],
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20.0,
                            fontStyle: FontStyle.italic,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          _cardData[index]['icon1'],
                          color: _cardData[index]['color'],
                        ),
                        const Text('Active'),
                        const SizedBox(width: 10),
                        Icon(
                          _cardData[index]['icon2'],
                          color: _cardData[index]['color'],
                        ),
                        Text(_cardData[index]['value']),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
      Center(
          child: Column(
        children: [
          const Text(
            "Doesn't have an ID yet?",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
            ),
          ),
         
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(150, 0),
              backgroundColor: const Color(0xFFF87F5B),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              padding: const EdgeInsets.all(15.0),
            ),
            child: const Text(
              'Get New ID',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            
          ),
          const SizedBox(height: 230),
        ],
      ))
    ]);
    
    
  }
}
