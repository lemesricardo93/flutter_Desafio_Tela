import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_desafio/imageAvatar/image_avatar_page.dart';

class TelaInicialPage extends StatefulWidget {
  const TelaInicialPage({Key? key}) : super(key: key);

  @override
  State<TelaInicialPage> createState() => _TelaInicialPageState();
}

Future<void> _refresh() {
  return Future.delayed(
    Duration(seconds: 2),
    () {
      setState() {
        ImageAvatarPage(
          urlImage:
              'https://media-exp1.licdn.com/dms/image/C5603AQHAdj_HBqx_iA/profile-displayphoto-shrink_400_400/0/1605733436286?e=1643846400&v=beta&t=3KbpkA45tf8BEPApbQrYru4Kwe9X924DpfEK_HBgN1w',
        );
      }

      ;
    },
  );
}

class _TelaInicialPageState extends State<TelaInicialPage> {
  int indice = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Instagram',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        actions: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              children: [
                Icon(Icons.add_box_outlined),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.favorite_border_sharp,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.message,
                ),
              ],
            ),
          ),
        ],
      ),
      body: RefreshIndicator(
        color: Colors.amber,
        onRefresh: _refresh,
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.black,
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          ImageAvatarPage(
                            urlImage:
                                'https://media-exp1.licdn.com/dms/image/C4D03AQGFfHqtFAILug/profile-displayphoto-shrink_100_100/0/1620680048178?e=1640822400&v=beta&t=_YKC1wmBVujbaAHUSJYhExXMwGvsuako_IIRpaw3pjY',
                            texto: 'Seu Story',
                          ),
                          ImageAvatarPage(
                            urlImage:
                                'https://media-exp1.licdn.com/dms/image/C4D03AQHKi1FRh9kJoQ/profile-displayphoto-shrink_400_400/0/1617933831615?e=1643846400&v=beta&t=yAzGLZaQPBNs6oPeziJpZh0OGTNpIzZbuq0OeW7cB2Q',
                            texto: 'AO VIVO',
                          ),
                          ImageAvatarPage(
                              urlImage:
                                  'https://media-exp1.licdn.com/dms/image/C4D03AQHSOJnMFzZ1dQ/profile-displayphoto-shrink_400_400/0/1632876606610?e=1643846400&v=beta&t=-_PO--UUfxsY9jQ-AVjDqfO9IU1DQqrTRpzBeSMO4w0'),
                          ImageAvatarPage(
                              urlImage:
                                  'https://media-exp1.licdn.com/dms/image/C4E03AQGos6vLLTyyIw/profile-displayphoto-shrink_400_400/0/1594145412535?e=1643846400&v=beta&t=EwU8lXvmSt4VwCeMESzUKy_4C3tk62q4vhWYY7FJRbw'),

                          ImageAvatarPage(
                            urlImage:
                                'https://media-exp1.licdn.com/dms/image/C5603AQHAdj_HBqx_iA/profile-displayphoto-shrink_400_400/0/1605733436286?e=1643846400&v=beta&t=3KbpkA45tf8BEPApbQrYru4Kwe9X924DpfEK_HBgN1w',
                            texto: 'EM REUNIAO',
                          ),
                          ImageAvatarPage(
                            urlImage:
                                'https://media-exp1.licdn.com/dms/image/C4D03AQFR37yr8DT9eA/profile-displayphoto-shrink_400_400/0/1517846434634?e=1643846400&v=beta&t=GpEbWnXUPHZil94k6pWN5cMrN-57m97nuNHoP473dXg',
                          ),                          
                        ],
                      ),
                      Container(color: Colors.amber),
                    ],
                  ),
                ),
                SizedBox(
                  height: 530,
                ),
                Positioned(
                  top: 150,
                  left: 0,
                  right: 0,
                  child: Stack(
                    children: [
                      Container(
                        color: Colors.black,
                        child: Column(
                          children: [
                            ImageAvatarPageContainer(
                              urlImage:
                                  'https://st2.depositphotos.com/2124563/11842/i/600/depositphotos_118420596-stock-photo-flag-of-goiania-in-goias.jpg',
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.network(
                                  'https://lh3.googleusercontent.com/proxy/SO56mJR-6KOBDsksVTWz-qKHQE9MJs-xeWyoM9gEqtVEC32PhgNR7cBP54TCthLLlTX-J0aaFu9Q2jasIPBan2kRerIe3F2OwnhVUU8JwTVjHzxqufERrPGH',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.black,
              child: Row(
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 30,
                    width: 10,
                  ),
                  Icon(
                    Icons.chat_bubble_outline_rounded,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 30,
                    width: 10,
                  ),
                  Icon(
                    Icons.send,
                    textDirection: TextDirection.ltr,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 30,
                    width: 268,
                  ),
                  Icon(
                    Icons.bookmark_outline_sharp,
                    textDirection: TextDirection.ltr,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Text(
              'Curtido por ricardo.lemes e outras 12 pessoas.',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indice,
        onTap: (index) {
          setState(() {
            indice = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home),
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            label: '2',
            icon: Icon(Icons.search_outlined),
          ),
          BottomNavigationBarItem(
            label: '3',
            icon: Icon(Icons.play_arrow_outlined),
          ),
          BottomNavigationBarItem(
            label: '4',
            icon: Icon(Icons.store),
          ),
        ],
      ),
    );
  }
}
