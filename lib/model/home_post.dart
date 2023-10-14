import '../assets.dart';

class HomePost{
 final String name;
  final String image;
  final String profilePhoto;
 final int id;

  HomePost({
    required this.id,
    required this.image,
    required this.name,
    required this.profilePhoto,
  });

}
 
   final List<HomePost> posts =
  [
    HomePost(id: 1, image: Assets.images.postPNG, name: 'ceheey', profilePhoto: Assets.images.profilephotoPNG),
    HomePost(id: 2, image: Assets.images.postPNG, name: 'ceheey', profilePhoto: Assets.images.profilephotoPNG),
    HomePost(id: 3, image: Assets.images.postPNG, name: 'ceheey', profilePhoto: Assets.images.profilephotoPNG),
  ];


