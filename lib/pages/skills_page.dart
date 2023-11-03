import 'package:flutter/material.dart';

class SkillsPage extends StatefulWidget {
  @override
  _SkillsPageState createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  List<String> skills = ['Flutter', 'Dart', 'Go'];

  void _addSkill() {
    showDialog(
      context: context,
      builder: (context) {
        TextEditingController _controller = TextEditingController();
        return AlertDialog(
          title: Text('Add Skill'),
          content: TextField(
            controller: _controller,
            decoration: InputDecoration(labelText: 'Enter Skill'),
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
                    skills.add(_controller.text);
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
        title: Text('Skills'),
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
                Icon(Icons.build, size: 50),
                SizedBox(height: 16),
                Text(
                  'Skills',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Expanded(
                  child: ListView.builder(
                    itemCount: skills.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Center(
                          child: Text(skills[index],
                              style:
                                  TextStyle(fontSize: 24, fontFamily: "Inter")),
                        ),
                      );
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: _addSkill,
                  child: Text('Add Skill'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
