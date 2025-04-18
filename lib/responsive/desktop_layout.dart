import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Desktop Layout')),
      body: Row(
        children: [
          Drawer(
            backgroundColor: Colors.blue,
            elevation: 1000,
            child: ListView(
              children: [
                DrawerHeader(
                  child: Container(
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        'Drawer Header',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Item 1'),
                ),
                ListTile(
                  title: Text('Item 2'),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                // childAspectRatio: 1.0,
                // mainAxisSpacing: 4.0,
                // crossAxisSpacing: 4.0
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    margin: EdgeInsets.all(4),
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        'Item $index',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          AspectRatio(
            aspectRatio: 1,
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

          // Expanded(
          //   flex: 2,
          //   child: GridView.builder(
          //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 1,
          //       // childAspectRatio: 1.0,
          //       // mainAxisSpacing: 4.0,
          //       // crossAxisSpacing: 4.0
          //     ),
          //     itemCount: 10,
          //     itemBuilder: (context, index) {
          //       return AspectRatio(
          //         aspectRatio: 1,
          //         child: Container(
          //           margin: EdgeInsets.all(4),
          //           color: Colors.red,
          //           child: Center(
          //             child: Text(
          //               'Item $index',
          //               style: TextStyle(color: Colors.white),
          //             ),
          //           ),
          //         ),
          //       );
          //     },
          //   ),
          // ),
          Expanded(
            flex: 1,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                // childAspectRatio: 1.0,
                // mainAxisSpacing: 4.0,
                // crossAxisSpacing: 4.0
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    margin: EdgeInsets.all(4),
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        'Item $index',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
