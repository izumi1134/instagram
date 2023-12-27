import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
   MyPage({Key? key}) : super(key: key);

  final images = [
    'https://appliv-domestic.akamaized.net/v1/760x/r/articles/129815/13877626_1604328764_041813000_0_1500_1500.jpeg',
    'https://fromtheasia.com/wp-content/uploads/NCG255-scaled.jpg',
    'https://t3design.co.jp/data/blog/130/611dffc01122a.png',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('マイページ')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
              Image.network('https://appliv-domestic.akamaized.net/v1/760x/r/articles/129815/13877626_1604328764_041813000_0_1500_1500.jpeg',
              width: 60,
                height: 60,
              ),
              const Spacer(),
              const Column(
                children: [
                  Text(
                    '7,041',
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text('投稿'),
                ],
              ),
              const SizedBox(width: 16),
              const Column(
                children: [
                  Text('4.6億',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text('フォロワー'),
                ],
              ),
              const SizedBox(width: 16),
              const Column(
                children: [
                  Text('99',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text('フォロー中'),
                ],
              ),
                         ],
                        ),
            ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'instagram',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                '#YoursToMake',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16),
              ),
              Text(
                'help.instagram.com',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16),
              ),
            ],
          ),
        ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                          ),
                          ),
                          child: const Text(
                            'フォロー中',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          child: const Text('メッセージ',
                          style: TextStyle(
                              color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 4),
                    ],
                  ),

                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: const Icon(Icons.keyboard_arrow_down,
                    color: Colors.black,
                    ),
                 ),
               ],
                         ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              primary: false,
              crossAxisCount: 3,
              children: images.map((imageUrl) {
                return InstagramPostItem(imageUrl: imageUrl);
              }).toList(),
            ),
    ],
    ),
    ),
    );
  }
}

class InstagramPostItem extends StatelessWidget {
  const InstagramPostItem({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(
        imageUrl,
      fit: BoxFit.cover,
    );
  }
}
