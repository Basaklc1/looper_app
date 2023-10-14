import 'package:looper_app/assets.dart';

class Category {
  final String category;
  final int id;
  final String image;
  Category({
    required this.category,
    required this.id,
    required this.image,
  });

}

final List<Category> categoryList =[
Category(id:1,category: 'Astroloji',image: Assets.icons.astrolojiPNG),
Category(id:2,category: 'Oyun',image: Assets.icons.oyunPNG),
Category(id:3,category: 'Kahve',image: Assets.icons.kahvePNG),
Category(id:4,category: 'Teknoloji',image: Assets.icons.teknolojiPNG),
Category(id:5,category: 'Fotoğrafçılık',image: Assets.icons.fotografcilikPNG),
Category(id:6,category: 'Şans',image: Assets.icons.sansPNG),
Category(id:7,category: 'Dans',image: Assets.icons.dansPNG),
Category(id:8,category: 'Yemek',image: Assets.icons.yemekPNG),
Category(id:9,category: 'Konser',image: Assets.icons.konserPNG),
Category(id:10,category: 'Astroloji',image: Assets.icons.astrolojiPNG),
Category(id:11,category: 'Oyun',image: Assets.icons.oyunPNG),
Category(id:12,category: 'Kahve',image: Assets.icons.kahvePNG),
Category(id:13,category: 'Teknoloji',image: Assets.icons.teknolojiPNG),
Category(id:14,category: 'Fotoğrafçılık',image: Assets.icons.fotografcilikPNG),
Category(id:15,category: 'Şans',image: Assets.icons.sansPNG),
Category(id:16,category: 'Dans',image: Assets.icons.dansPNG),
Category(id:17,category: 'Yemek',image: Assets.icons.yemekPNG),
Category(id:18,category: 'Konser',image: Assets.icons.konserPNG),
Category(id:19,category: 'Dans',image: Assets.icons.dansPNG),
Category(id:20,category: 'Yemek',image: Assets.icons.yemekPNG),
Category(id:21,category: 'Konser',image: Assets.icons.konserPNG),

];
