class Data {
  final String images, name, title, price;

  Data(
      {required this.images,
      required this.name,
      required this.title,
      required this.price});
}

class Krossi {
  final String photoKross;

  Krossi({required this.photoKross});
}

class LastView {
  final String photobrands, name, title;
  int count;

  LastView({required this.photobrands,required this.count,required this.name,required this.title});
}
