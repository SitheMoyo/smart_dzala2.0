import 'package:flutter/material.dart';

class MyPickups extends StatefulWidget {
  const MyPickups({Key? key}) : super(key: key);

  @override
  State<MyPickups> createState() => _MyPickupsState();
}

class _MyPickupsState extends State<MyPickups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pickups'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 210,
            // decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(8),
            //     border: Border.all(
            //       color: Colors.grey,
            //       width: 1,
            //     )
            // ),
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: SizedBox(
                        child: ClipOval(
                          child: Image.asset("images/onetime.png"),
                        ),
                      ),
                    ),
                    title: const Text('One-time Pickup'),
                    // subtitle: Text(3tt
                    //   'Secondary Text',
                    //   style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    // ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Effortlessly schedule a one-time pickup for your occasional waste disposal needs. Simply press the button below!',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // do something when the button is pressed
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.indigo),
                      ),
                      child: Center(child: Text('')),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
