import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200.0,
              maxWidth: 200.0,
            ),
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
          )
        ],
      ),
    );
  }
}

///宽高比容器
class AspectRatioDemo extends StatelessWidget {
  const AspectRatioDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      child: Container(
        child: Image.network(
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568115263774&di=60d6ae52a779d3035aee00c4d9eda96d&imgtype=0&src=http%3A%2F%2Fpic33.nipic.com%2F20130924%2F9822353_015119969000_2.jpg',
          fit: BoxFit.cover,
        ),
      ),
      aspectRatio: 16.0 / 9.0,
    );
  }
}

class StackDemo extends StatelessWidget {
  const StackDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
        SizedBox(
          width: 200.0,
          height: 300.0,
          child: Container(
            alignment: Alignment(0.0, -1.0),
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        SizedBox(
          height: 32.0,
        ),
        SizedBox(
          width: 100.0,
          height: 100.0,
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0),
                gradient: RadialGradient(colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 54, 255, 1.0),
                ])),
            child: Icon(
              Icons.brightness_2,
              color: Colors.white,
              size: 32.0,
            ),
          ),
        ),
        Positioned(
          right: 20.0,
          bottom: 120.0,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 26.0,
          ),
        ),
        Positioned(
          right: 30.0,
          top: 10.0,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 22.0,
          ),
        ),
        Positioned(
          right: 200.0,
          top: 30.0,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 32.0,
          ),
        ),
        Positioned(
          right: 50.0,
          top: 100.0,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 32.0,
          ),
        ),
        Positioned(
          right: 10.0,
          bottom: 60.0,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 12.0,
          ),
        ),
        Positioned(
          right: 4.0,
          bottom: -4.0,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 32.0,
          ),
        ),
        Positioned(
          top: 70.0,
          right: 60.0,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 32.0,
          ),
        ),
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;
  IconBadge(this.icon, {this.size = 32.0});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
