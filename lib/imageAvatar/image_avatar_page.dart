import 'package:flutter/material.dart';

class ImageAvatarPage extends StatelessWidget {
  final String urlImage;
  final String? texto;
  const ImageAvatarPage({Key? key, required this.urlImage, this.texto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Stack(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            padding: EdgeInsets.all(4),
            child: CircleAvatar(
              backgroundImage: NetworkImage(urlImage),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: texto != null ? Colors.red : Colors.transparent,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  texto ?? '',
                  style: TextStyle(
                    fontSize: 8,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageAvatarPageContainer extends StatelessWidget {
  final String urlImage;
  const ImageAvatarPageContainer({Key? key, required this.urlImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            child: CircleAvatar(
              backgroundImage: NetworkImage(urlImage),
            ),
          ),
        ],
      ),
      Stack(
        children: [
          Container(
            width: 100,
            height: 100,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 6.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Container(
                      child: Text(
                        'Prefeitura de Gyn',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ]);
  }
}
