import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget with _ColorProje, _SizeProje, _PostIcons, _PaddingProje {
  final String name;
// Like Text Bölümü =>
  final String obamaLike = 'obama ';
  final String veLike = 've ';
  final String digerleriLike = 'diğerleri ';
  final String begeniLike = ' beğendi';

  // Caption Text Bölümü=>
  final aciklama = '"Çocuksu merakınızı her zaman korumalısınız"...';

  UserPosts({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Profil Photo
        Padding(
          padding: paddingRow,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: profilWidth,
                    height: profilHeight,
                    decoration: BoxDecoration(color: grey300, shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: spaceSizedBox,
                  ),
                  // Name
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              menuIcon,
            ],
          ),
        ),

        //Post
        Container(height: postHeight, color: grey300),

        //  below the post => buttons and comments
        Padding(
          padding: paddingRow,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  favoriteIcon,
                  Padding(
                    padding: paddingIcon,
                    child: chatIcon,
                  ),
                  shareIcon
                ],
              ),
              bookMarkIcon,
            ],
          ),
        ),

        // Like =>
        Padding(
          padding: paddinLike,
          child: Row(
            children: [
              Text(
                obamaLike,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(veLike),
              Text(
                digerleriLike,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(begeniLike)
            ],
          ),
        ),

        //Caption
        Padding(
          padding: paddingCaption,
          child: Row(
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(color: black),
                  children: [
                    TextSpan(text: name, style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: aciklama),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _PaddingProje {
  final paddingRow = const EdgeInsets.all(16);
  final paddingIcon = const EdgeInsets.symmetric(horizontal: 12);
  final paddinLike = const EdgeInsets.only(left: 16.0);
  final paddingCaption = const EdgeInsets.only(left: 16, top: 7);
}

class _ColorProje {
  Color black54 = Colors.black54;
  Color black = Colors.black;
  Color grey300 = Colors.grey.shade300;
}

class _SizeProje {
  final double postHeight = 300;
  final double profilWidth = 40;
  final double profilHeight = 40;
  final double spaceSizedBox = 10;
}

class _PostIcons {
  final favoriteIcon = const Icon(Icons.favorite);
  final chatIcon = const Icon(Icons.chat_bubble_outline);
  final shareIcon = const Icon(Icons.share);
  final bookMarkIcon = const Icon(Icons.bookmark);
  final menuIcon = const Icon(Icons.menu);
}
