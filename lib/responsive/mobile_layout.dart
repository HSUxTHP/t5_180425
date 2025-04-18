import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mobile Layout')),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 0.75,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // childAspectRatio: 1.0,
                  // mainAxisSpacing: 4.0,
                  // crossAxisSpacing: 4.0
                ),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(4),
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'Item $index',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(4),
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        'Item $index',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                }
            ),
          )
        ],
      ),
    );
  }
}
