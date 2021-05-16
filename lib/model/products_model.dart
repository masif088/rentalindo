

class Products {
  final int id;
  final String category;
  final String name;
  final String brand;
  final String imageUrl;
  final String color;
  final String transmission;
  final String fuel;
  final int cc;
  final int seat;
  final int year;
  final int price;
  final int stock;
  final String desc;
  final String rental;
  final String location;

  Products(
      {this.id,
        this.category,
      this.name,
        this.brand,
      this.imageUrl,
      this.color,
      this.transmission,
        this.fuel,
        this.cc,
        this.seat,
        this.year,
      this.price,
      this.stock,
      this.desc,
      this.rental,
      this.location});
}

final Products avanza = Products(
    id: 0,
    category: 'MPV',
    name: 'Toyota Avanza Manual 2020',
    brand: 'Toyota',
    imageUrl: 'lib/assets/p_avanza2020.jpg',
    color: 'Hitam',
    transmission: 'Manual',
    fuel: 'Bensin',
    cc: 1500,
    seat: 7,
    year: 2020,
    price: 325000,
    stock: 3,
    rental: 'RentalindoCar',
    location: 'Jember',
    desc:
        'Toyota Avanza tersedia dalam pilihan mesin Bensin di Indonesia MPV baru dari Toyota hadir dalam 10 varian. Bicara soal spesifikasi mesin Toyota Avanza, ini ditenagai dua pilihan mesin Bensin berkapasitas 1496 cc. Avanza tersedia dengan transmisi Manual and Otomatis tergantung variannya. Juga, tergantung pilihan dan jenis bahan bakar, konsumsi BBM Avanza mencapai 14.8 kmpl untuk perkotaan. Avanza adalah MPV 7 seater dengan panjang 4190 mm, lebar 1660 mm, wheelbase 2655 mm. serta ground clearance 200 mm.');

final Products alya = Products(
    id: 1,
    category: 'Hatchback',
    name: 'Daihatsu Alya Matic 2018',
    brand: 'Dayhatsu',
    imageUrl: 'lib/assets/p_ayla2018.jpg',
    color: 'Abu-abu',
    transmission: 'Matic',
    fuel: 'Bensin',
    cc: 1200,
    seat: 5,
    year: 2018,
    price: 275000,
    stock: 2,
    rental: 'RentalindoCar',
    location: 'Jember',
    desc:
        'Ayla merupakan salah satu varian mobil LCGC atau Low Cost Green Car yang tersedia di pasar Indonesia. Jika berbicara soal mobil murah, hampir tak mungkin nama Ayla tak terbersit di benak kita. Tak heran, mobil yang mengusung jenis LCGC memang lebih murah ketimbang mobil non LCGC.');

final Products innova = Products(
    id: 2,
    category: 'MPV',
    name: 'Grand Innova Manual 2018',
    brand: 'Toyota',
    imageUrl: 'lib/assets/p_innova2018.jpg',
    color: 'Putih',
    transmission: 'Manual',
    fuel: 'Solar',
    cc: 2500,
    seat: 7,
    year: 2018,
    price: 400000,
    stock: 1,
    rental: 'RentalindoCar',
    location: 'Jember',
    desc:
        'Jika dilihat dari tampilan luar secara sekilas, mobil Toyota Kijang All New Innova terlihat mendapat perubahan signifikan pada desain grilled depan, dengan desain heksagonal dan terlihat seperti desain mobil Toyota New Avanza. Lalu seperti apa spesifikasi eksterior, interior, mesin dan fitur-fitur unggulan mobil Toyota Kijang All New Innova terbaru.');

final Products xpander = Products(
    id: 3,
    category: 'MPV',
    name: 'Xpander Matic 2020',
    brand: 'Misthubishi',
    imageUrl: 'lib/assets/p_xpander2020.jpg',
    color: 'Hitam',
    transmission: 'Automatic',
    fuel: 'Bensin',
    cc: 1500,
    seat: 7,
    year: 2020,
    price: 450000,
    stock: 2,
    rental: 'JemberMobil',
    location: 'Jember',
    desc:
        'Mitsubishi Xpander tersedia dalam pilihan mesin Bensin di Indonesia MPV baru dari Mitsubishi hadir dalam 16 varian. Bicara soal spesifikasi mesin Mitsubishi Xpander, ini ditenagai dua pilihan mesin Bensin berkapasitas 1499 cc. Xpander tersedia dengan transmisi Manual and Otomatis tergantung variannya. Juga, tergantung pilihan dan jenis bahan bakar, konsumsi BBM Xpander mencapai 10.5 kmpl untuk perkotaan, 14.5 kmpl saat menjelajah perjalanan luar kota. Xpander adalah MPV 7 seater dengan panjang 4475 mm, lebar 1750 mm, wheelbase 2775 mm. serta ground clearance 200 mm.');

final Products alphard = Products(
    id: 4,
    category: 'Minivan',
    name: 'New Alphard 2019',
    brand: 'Toyota',
    imageUrl: 'lib/assets/p_alphard2019.jpg',
    color: 'Putih',
    transmission: 'Automatic',
    fuel: 'Bensin',
    cc: 2500,
    seat: 7,
    year: 2019,
    price: 2500000,
    stock: 1,
    rental: 'JemberRental',
    location: 'Jember',
    desc:
        'Toyota Alphard tersedia dalam pilihan mesin Bensin di Indonesia MPV baru dari Toyota hadir dalam 6 varian. Bicara soal spesifikasi mesin Toyota Alphard, ini ditenagai dua pilihan mesin Bensin berkapasitas 3456 cc. Alphard tersedia dengan transmisi CVT and Otomatis tergantung variannya. Alphard adalah MPV 7 seater dengan panjang 4945 mm, lebar 1850 mm, wheelbase 3000 mm. serta ground clearance 160 mm.');

final Products brio = Products(
    id: 4,
    category: 'Hatchback',
    name: 'Honda Brio 2019',
    brand: 'Honda',
    imageUrl: 'lib/assets/p_brio2019.png',
    color: 'Kuning',
    transmission: 'Automatic',
    fuel: 'Bensin',
    cc: 1200,
    seat: 5,
    year: 2019,
    price: 350000,
    stock: 2,
    rental: 'JemberRental',
    location: 'Jember',
    desc:
        'New Honda Brio kini hadir dengan lebih banyak pilihan yang meliputi New Brio A/T 1.2 L yang menawarkan fitur lengkap dengan harga terjangkau, Brio Sports 1.3 L yang semakin sporty, serta Brio Satya yang merupakan produk Low Cost Green Car (LCGC) berkualitas tinggi dari Honda.');

final Products vios = Products(
    id: 4,
    category: 'Sedan',
    name: 'Toyota Vios 2012',
    brand: 'Toyota',
    imageUrl: 'lib/assets/p_vios2012.jpg',
    color: 'Hitam',
    transmission: 'Manual',
    fuel: 'Bensin',
    cc: 1500,
    seat: 5,
    year: 2012,
    price: 450000,
    stock: 4,
    rental: 'JemberRental',
    location: 'Jember',
    desc:
        'Dengan kecanggihan mesin VVT-i, Toyota Vios 2012 tangguh menaklukkan setiap kondisi jalan yang Anda lalui. Kestabilan, kenyamanan dan akurasinya menjadikan performa Vios tiada tertandingi.');

List<Products> hatchback = [brio, alya];

List<Products> mpv = [xpander, innova, avanza];

List<Products> sedan = [vios];

List<Products> suv = [];

List<Products> minivan = [alphard];

List<Products> pickup = [];

List<Products> sport = [];

List<Products> motorcycle = [];

List<Products> truck = [];

List<Products> products = [avanza, alya, innova, xpander, alphard, brio, vios];

List<Products> popular = [avanza, alphard, innova, xpander, alya, vios, brio];

List<Products> near = [xpander, alphard, brio, vios, avanza, alya, innova];

List<Products> newlisted = [brio, vios, avanza, alya, alphard, innova, brio];

List<Products> saved = [avanza, brio, vios];
