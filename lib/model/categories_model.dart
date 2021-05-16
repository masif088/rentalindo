class Categories {
  final int id;
  final String name;
  final String imageUrl;

  Categories({this.id, this.name, this.imageUrl});
}

List<Categories> categories = [
  Categories(
    id: 0,
    name: 'MPV',
    imageUrl: "lib/assets/c_mpv.png"
  ),
  Categories(
    id: 1,
    name: 'Hatchback',
    imageUrl: "lib/assets/c_hatchback.png"
  ),
  Categories(
    id: 2,
    name: 'Sedan',
    imageUrl: "lib/assets/c_sedan.png"
  ),
  Categories(
    id: 3,
    name: 'SUV',
    imageUrl: "lib/assets/c_suv.png"
  ),
  Categories(
    id: 4,
    name: 'Minivan',
    imageUrl: "lib/assets/c_minivan.png"
  ),
  Categories(
      id: 5,
      name: 'Pickup',
      imageUrl: "lib/assets/c_pickup.png"
  ),
  Categories(
      id: 6,
      name: 'Sport',
      imageUrl: "lib/assets/c_sport.png"
  ),
  Categories(
      id: 7,
      name: 'Motorcyle',
      imageUrl: "lib/assets/c_motorcycle.png"
  ),
  Categories(
      id: 8,
      name: 'Truck',
      imageUrl: "lib/assets/c_truck.png"
  ),
];