import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = ['Apple', 'Banana', 'Lemon'];
  String _action = 'Nothing';
  List<String> _selected = [];
  String _choice = 'Lemon';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: <Widget>[
                Chip(
                  label: Text('Life'),
                ),
                Chip(
                  label: Text('Sunset'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('你好'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text('酷'),
                  ),
                ),
                Chip(
                  label: Text('美女'),
                  onDeleted: () {},
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  deleteButtonTooltipMessage: 'Remove this tag',
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568115263774&di=60d6ae52a779d3035aee00c4d9eda96d&imgtype=0&src=http%3A%2F%2Fpic33.nipic.com%2F20130924%2F9822353_015119969000_2.jpg'),
                  ),
                ),
                Chip(
                  label: Text('美女'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568115263774&di=60d6ae52a779d3035aee00c4d9eda96d&imgtype=0&src=http%3A%2F%2Fpic33.nipic.com%2F20130924%2F9822353_015119969000_2.jpg'),
                  ),
                ),
                Chip(
                  label: Text('美女'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568115263774&di=60d6ae52a779d3035aee00c4d9eda96d&imgtype=0&src=http%3A%2F%2Fpic33.nipic.com%2F20130924%2F9822353_015119969000_2.jpg'),
                  ),
                ),
                Chip(
                  label: Text('美女'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568115263774&di=60d6ae52a779d3035aee00c4d9eda96d&imgtype=0&src=http%3A%2F%2Fpic33.nipic.com%2F20130924%2F9822353_015119969000_2.jpg'),
                  ),
                ),
                Chip(
                  label: Text('美女'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568115263774&di=60d6ae52a779d3035aee00c4d9eda96d&imgtype=0&src=http%3A%2F%2Fpic33.nipic.com%2F20130924%2F9822353_015119969000_2.jpg'),
                  ),
                ),
                Chip(
                  label: Text('美女'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568115263774&di=60d6ae52a779d3035aee00c4d9eda96d&imgtype=0&src=http%3A%2F%2Fpic33.nipic.com%2F20130924%2F9822353_015119969000_2.jpg'),
                  ),
                ),
              ],
            ),
            Divider(
              indent: 32.0,
              color: Colors.red,
            ),
            Wrap(
              spacing: 8.0,
              children: _tags.map((tag) {
                return Chip(
                  label: Text(tag),
                  onDeleted: () {
                    setState(() {
                      _tags.remove(tag);
                    });
                  },
                );
              }).toList(),
            ),
            Divider(
              indent: 32.0,
              color: Colors.red,
            ),
            Container(
              width: double.infinity,
              child: Text('ActionChip:$_action'),
            ),
            Wrap(
              spacing: 8.0,
              children: _tags.map((tag) {
                return ActionChip(
                  label: Text(tag),
                  onPressed: () {
                    setState(() {
                      _action = tag;
                    });
                  },
                );
              }).toList(),
            ),
            Divider(
              indent: 32.0,
              color: Colors.red,
            ),
            Container(
              width: double.infinity,
              child: Text('FilterChip:${_selected.toString()}'),
            ),
            Wrap(
              spacing: 8.0,
              children: _tags.map((tag) {
                return FilterChip(
                  label: Text(tag),
                  selected: _selected.contains(tag),
                  onSelected: (value) {
                    setState(() {
                      if (_selected.contains(tag)) {
                        _selected.remove(tag);
                      } else {
                        _selected.add(tag);
                      }
                    });
                  },
                );
              }).toList(),
            ),
            Divider(
              indent: 32.0,
              color: Colors.red,
            ),
            Container(
              width: double.infinity,
              child: Text('ChoicChip:$_choice'),
            ),
            Wrap(
              spacing: 8.0,
              children: _tags.map((tag) {
                return ChoiceChip(
                  label: Text(tag),
                  selectedColor: Colors.black,
                  selected: _choice == tag,
                  onSelected: (value) {
                    setState(() {
                      _choice = tag;
                    });
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: () {
          setState(() {
            _tags = ['Apple', 'Banana', 'Lemon'];
            _selected = [];
            _choice = 'Lemon';
          });
        },
      ),
    );
  }
}
