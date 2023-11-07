# Concert Ticket Inventory Mobile
**Nama  : Kelvin Saputra**

**NPM   : 2206027186**

**Kelas : PBP F**

## To Do List TUGAS 7
- [x] Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.
- [x] Membuat tiga tombol sederhana dengan ikon dan teks untuk:
    * Melihat daftar item (Lihat Item)
    * Menambah item (Tambah Item)
    * Logout (Logout)
- [x] Memunculkan Snackbar dengan tulisan:
    * "Kamu telah menekan tombol Lihat Item" ketika tombol Lihat Item ditekan.
    * "Kamu telah menekan tombol Tambah Item" ketika tombol Tambah Item ditekan.
    * "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.
- [x] Menjawab beberapa pertanyaan berikut pada README.md pada root folder.
    * Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
    * Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
    * Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
- [x] Melakukan add-commit-push ke GitHub.

### Perbedaan Utama Antara `Stateless Widget` dan `Stateful Widget`
Terdapat beberapa perbedaan antara `Stateless Widget` dan `Stateful Widget`. Berikut adalah beberapa perbedaan yang ada berdasarkan pengelompokkan kategori.
- **Perubahan**
    * `Stateless Widget`: Widget ini tidak memiliki internal state yang artinya setelah widget tersebut dibangun, maka tampilan widget itu tidak akan berubah.
    * `Stateful Widget` : Widget ini memiliki state internal selama widget itu masih ada. 
- **Penggunaan**
    * `Stateless Widget`: Widget ini digunakan untuk menampilkan komponen tetap dan tidak memerlukan perubahan sepanjang widget ini digunakan. Contohnya digunakan untuk teks, gambar, ikon, tombol, dan sebagainya.
    * `Stateful Widget` : Widget ini digunakan untuk bagian tampilan yang perlu merespons perubahan state seperti untuk  memperbarui tampilan aplikasi ketika state berubah. Contohnya digunakan untuk daftar item yang dapat digulir, input pengguna, animasi, dan lainnya.
- **Efisiensi**
    * `Stateless Widget`: `Stateless widget` lebih efisien daripada `Stateful Widget` karena mereka tidak memerlukan pembaharuan state dan render ulang saat ada perubahan.
    * `Stateful Widget` : Ketika ada perubahan dalam state, widget ini dapat membangun ulang tampilan sesuai dengan state yang diberikan yang membuatnya menjadi kurang efektif untuk dibanding dengan `Stateles Widget`.

### Widget yang digunakan dalam tugas ini beserta dengan fungsinya
- `MyHomePage` berfungsi untuk Membungkus seluruh tampilan halaman home. 
- `InventoryCard` berfungsi untuk menampilkan kartu dengan teks dan ikon didalamnya.

- `Scaffold` berfungsi untuk mengatur kerangka umum tampilan aplikasi, termasuk AppBar dan body.
- `AppBar` berfungsi untuk menampilkan bilah atas (app bar) di halaman.biasanya digunakan untuk menampilkan judul aplikasi di dalamnya.
- `SingleChildScrollView` berfungsi untuk membungkus konten yang ada di dalamnya sehingga ketika overflow dapat di scroll
- `Padding` berfungsi untuk mengatur jarak ke sekeliling widget di dalamnya
- `Column` berfungsi untuk menampilkan sejumlah children (widget) secara vertikal, satu di atas yang lain.
- `Text` berfungsi untuk menampilkan teks dalam suatu aplikasi.
- `GridView.count` berfungsi untuk membuat tampilan grid dengan sejumlah item yang dapat diatur dalam baris dan kolom.
- `Material` berfungsi untuk memberikan warna background pada InventoryCard.
- `InkWell` berfungsi untuk mengatur area yang responsif terhadap sentuhan dan menangani aksi ketika kartu diklik dan menampilkan Snackbar.
- `Container` berfungsi untuk mengatur tata letak dan gaya konten di dalamnya.
- `Icon` berfungsi untuk Menampilkan ikon yang sesuai dengan item Inventory
- `SnackBar` berfungsi untuk menampilkan pesan pop-up sementara di bagian bawah layar.

### Jelaskan step by step penyelesaian tugas
#### Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.
1. Pertama, bukalah command prompt pada direktori dimana kita ingin menyimpan project atau program yang ingin kita buat.
2. Selanjutnya, masukkan perintah berikut untuk membuat direktori baru yang berisi aplikasi flutter.
```shell
flutter create <nama_project>
``` 
dalam kasus ini saya menggunakan nama project Inventory_Mobile
3. Tunggu proses untuk selesai dilakukan.
4. Selanjutnya masuk ke dalam direktori baru yang sudah dibaut.
5. Selanjutnya lakukan konfigurasi terhadap project agar kita bisa jalankan aplikasi kita pada emulator chrome dengan cara memasukkan perintah berikut.
```shell
flutter config --enable-web
```
6. Selanjutnya setelah melakukan konfigurasi, kita dapat menggunakan flutter pada emulator chrome dengan memasukkan perintah berikut.
```shell
flutter run -d chrome
```
7. Ketika menjalankan aplikasi maka akan ada aplikasi default increment yang dibuat oleh flutter secara otomatis.

#### Membuat tiga tombol sederhana dengan ikon
1. Pertama saya melakukan import dependensi terhadap paket `flutter/material.dart` yang digunakan untuk membangun aplikasi flutter dan mengakses komponen UI (*User Interface*)
2. Selanjutnya saya membuat kelas yang digunakan untuk menyimpan informasi dari suatu widget. mulai dari nama, Icon dan Warna.
3. Deklarasi kelas `MyHomePage` yang digunakan sebagai container utama pada main menu.
4. Selanjutnya kelas `MyHomePage` mendefinisikan constructor yang mengambil parameter `Key`. Konstruktor ini digunakan untuk menginisialisasi objek MyHomePage
5. Selanjutnya pada kelas `MyHomePage` saya membuat list Inventory Item yang berisi informasi tombol yang ingin dibuat.
6. Selanjutnya dengan method build, saya membuat tampilan halaman utama yang mengembalikan scaffold.
7. Selanjutnya didalam scaffold saya mengisi beberapa rancangan untuk tampilan menu utama saya termasuk memberikan AppBar, menberikan judul pada aplikasi dan membuat tombol sesuai dengan list yang sudah dibuat sebelumnya. Berikut adalah code yang ditaro didalam scaffold
```Dart
appBar: AppBar(
        title: const Text(
          'Concert Ticket Inventory',
        ),
      ),
      body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                child: Text(
                  'KonserKu', // Text yang menandakan toko
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                // Container pada card kita.
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((InventoryItem item) {
                  // Iterasi untuk setiap item
                  return InventoryCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
```
8. Dengan begitu kita telah berhasil membuat tombol sesuai dengan parameter yang kita masukkan dalam itemList dan membuat warna tiap tombol berbeda.

#### Memunculkan Snackbar
1. Untuk membuat tombol yang dibuat saat dipencet dapat menampilkan tulisan, kita perlu membuat class `InventoryCard` yang mengambil object item pada konstruktornya.
2. Pemanggilan class `InventoryCard` dilakukan pada saat kita membuat tombol yang selanjutnya akan mengambil item dari tombol yang kita buat.
3. Selanjutnya pada class `InventoryCard` dengan menggunakan method build, kita akan tambahkan Snackbar yang muncul ketika tombol diklik dan akan disembunyikan ketika tombol sudah tidak di klik. Berikut adalah implementasi dari code tersebut.
```Dart
Widget build(BuildContext context) {
    return Material(
      color: item.widgetColor,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.itemName}!")));
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.itemName,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
```
Tambahkan code tersebut di dalam class `InventoryCard` sehingga dapat memunculkan Snackbar pada saat kita melakukan aksi klik pada tombol menu yang disediakan