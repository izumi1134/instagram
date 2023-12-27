import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('INSTAGRAM',
          style: TextStyle(
            fontSize: 12,
          ),
          ),
          Text('投稿',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          ),
        ],
      ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
            Row(
              children: [
                Image.network('https://appliv-domestic.akamaized.net/v1/760x/r/articles/129815/13877626_1604328764_041813000_0_1500_1500.jpeg',
                width: 40,
                  height: 40,
                ),
                const SizedBox(
                  width: 8,
                ),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Instagram',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Image.network('https://gantale.com/news/wp-content/uploads/2017/10/verified.jpg',
                          width: 10,
                          height: 10,
                        ),
                      ],
                    ),
                    const Text('サンディエゴ',
                    style: TextStyle(
                      fontSize: 11,
                    ),
                    ),
                  ],
                 ),
                const SizedBox(
                  width: 200,
                ),
                const Icon(Icons.more_horiz,
                ),
            ],
          ),
            SizedBox(
              width: 400,
              height: 450,
            child: Image.network('https://aipict.com/wp-content/uploads/2022/09/beach01.png',
            ),
            ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Image.network('https://sato-icons.com/wp/wp-content/uploads/2022/08/ハートのアイコン2.png',
                    width: 40,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Image.network('https://icon-rainbow.com/i/icon_01203/icon_012030_256.jpg',
                    width: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Image.network('https://cdn.pixabay.com/photo/2018/11/13/21/44/instagram-3814059_960_720.png',
                    width: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 200,
                  ),
                  Image.network('https://i0.wp.com/ai-catcher.com/wp-content/uploads/icon_5-1.png?w=567&ssl=1',
                  width: 40,
                  ),
                ],
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('「いいね！」704899件',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              const Text('instagram "Style and sustainability do not have to be two separate things. They can be one and the same, and sustainable living itself should be…続きを読む',
              ),
                ],
        ),
      ),
      ),
    );

  }
}

