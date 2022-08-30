import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScrollImage extends StatefulWidget {
  const ScrollImage({Key? key}) : super(key: key);
  @override
  State<ScrollImage> createState() => _ScrollImageState();
}

class _ScrollImageState extends State<ScrollImage> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  String ruta = "";

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 260,
            child: PageView.builder(
                itemCount: 5,
                itemBuilder: (context, position) {
                  if (position == 0)
                    ruta = "assets/pancakes.jpg";
                  else if (position == 1)
                    ruta = 'assets/bread.jpg';
                  else if (position == 2)
                    ruta = 'assets/caffe.jpg';
                  else if (position == 3)
                    ruta = 'assets/dinner.jpg';
                  else if (position == 4) ruta = 'assets/inicio.jpg';
                  return _buildPageItem(position);
                })),
      ],
    );
  }

  //agregar una imagen al principio
  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: 250,
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven ? Color(0xFF69c5DF) : Color(0xFF9294cc),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(ruta),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFe8e8e8),
                  blurRadius: 5.0,
                  offset: Offset(0, 5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
