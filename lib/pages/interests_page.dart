import 'package:flutter/material.dart';

class InterestsPage extends StatefulWidget {
  @override
  _InterestsPageState createState() => _InterestsPageState();
}

class _InterestsPageState extends State<InterestsPage> {
  List<String> interests = ['Reading', 'Coding', 'Gaming'];

  void _addInterest() {
    showDialog(
      context: context,
      builder: (context) {
        TextEditingController _controller = TextEditingController();
        return AlertDialog(
          title: Text('Add Interest'),
          content: TextField(
            controller: _controller,
            decoration: InputDecoration(labelText: 'Enter Interest'),
          ),
          actions: [
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Add'),
              onPressed: () {
                if (_controller.text.isNotEmpty) {
                  setState(() {
                    interests.add(_controller.text);
                  });
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interests'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Card(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.favorite, size: 50),
                const SizedBox(height: 16),
                const Text(
                  'Interests',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Expanded(
                  child: ListView.builder(
                    itemCount: interests.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Center(
                          child: Text(interests[index],
                              style:
                                  TextStyle(fontSize: 24, fontFamily: "Inter")),
                        ),
                      );
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: _addInterest,
                  child: Text('Add Interest'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
