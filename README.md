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
                  'KonserKu', // Text yang mensayakan toko
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

## To Do List TUGAS 8
- [x] Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan ketentuan sebagai berikut:

- [x] Memakai minimal tiga elemen input, yaitu `name`, `amount`, `description`. Tambahkan elemen input sesuai dengan model pada aplikasi tugas Django yang telah kamu buat.
- [x] Memiliki sebuah tombol `Save`.
- [x] Setiap elemen input di formulir juga harus divalidasi dengan ketentuan sebagai berikut:
      * Setiap elemen input tidak boleh kosong.
      * Setiap elemen input harus berisi data dengan tipe data atribut modelnya.

- [x] Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol `Tambah Item` pada halaman utama.
- [x] Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah `pop-up` setelah menekan tombol `Save` pada halaman formulir tambah item baru.
- [x] Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:
    * Drawer minimal memiliki dua buah opsi, yaitu `Halaman Utama` dan `Tambah Item`.
    * Ketika memiih opsi Halaman Utama, maka aplikasi akan mengarahkan pengguna ke halaman utama.
    * Ketika memiih opsi (`Tambah Item`), maka aplikasi akan mengarahkan pengguna ke halaman form tambah item baru.

- [x] Menjawab beberapa pertanyaan berikut pada `README.md` pada root folder (silakan modifikasi README.md yang telah kamu buat sebelumnya; tambahkan subjudul untuk setiap tugas).
    * Jelaskan perbedaan antara `Navigator.push()` dan `Navigator.pushReplacement()`, disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
    * Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
    * Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
    * Bagaimana penerapan clean architecture pada aplikasi Flutter?
    * Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

- [x] Melakukan add-commit-push ke GitHub.

### Perbedaan antara `Navigator.push()` dan `Navigator.pushReplacement()`, disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
Kedua metode ini memiliki perbedaan utama dalam cara mereka menangani tumpukan halaman (stack) dalam aplikasi.
- **Fungsi**
  * Pada `Navigator.push()`, Metode ini menambahkan halaman baru ke atas tumpukan navigasi. Halaman sebelumnya tetap ada di tumpukan dan pengguna dapat kembali ke halaman tersebut dengan menggunakan tombol back.
  * Pada `Navigator.pushReplacement()`, Metode ini menggantikan halaman saat ini di tumpukan navigasi dengan halaman baru. Halaman sebelumnya dihapus dari tumpukan sehingga pengguna tidak dapat kembali ke halaman itu lagi.

- **Penggunaan**
  * Pada `Navigator.push()`, Metode ini biasanya digunakan ketika kita ingin memungkinkan pengguna untuk kembali ke halaman sebelumnya, seperti dalam kasus navigasi dari daftar item ke detail item.
  * Pada `Navigator.pushReplacement()`, metode ini sering digunakan dalam kasus seperti login/logout flow, di mana setelah pengguna berhasil login atau logout, kita tidak ingin mereka dapat kembali ke halaman login atau dashboard hanya dengan menekan tombol back.

### Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
Berikut adalah penjelasan tentang beberapa layout widget utama di Flutter:
- **Container**
Container adalah widget yang digunakan untuk mendekorasi, memberi dimensi, dan memposisikan child widget.biasanya digunakan pada saat kita ingin memberikan padding, margin, latar belakang, atau transformasi pada widget tunggal.

- **Row dan Column**
Row digunakan untuk layout horizontal dan Column untuk layout vertikal.
Penggunaan Row dan Column untuk membuat layout linier. biasanya digunakan untuk menata widget secara horizontal (Row) atau vertikal (Column).

- **Stack**
Stack memungkinkan kita untuk menumpuk widget di atas satu sama lain. Penggunaan Stack digunakan untuk tumpukan widget, seperti menempatkan teks di atas gambar.

- **Wrap**
Wrap menata anak-anaknya secara horizontal atau vertikal dan secara otomatis akan pindah ke baris atau kolom berikutnya jika tidak ada ruang cukup.
Penggunaann Wrap adalah saat kita memiliki kumpulan widget yang mungkin tidak muat dalam satu baris atau kolom dan membutuhkan pembungkusan ke baris atau kolom berikutnya.

- **GridView**
GridView digunakan untuk membuat tata letak grid yang dapat di-scroll. Biasanya digunakan untuk menampilkan data dalam bentuk grid, seperti galeri gambar.

- **ListView**

ListView adalah widget scrollable yang menata anak-anaknya secara linear.
Penggunaan ListView digunakan untuk daftar item yang dapat discroll, seperti daftar email atau berita.

- **Expanded dan Flexible**
Expanded dan Flexible memungkinkan anak-anaknya mengisi ruang yang tersedia dalam Row, Column, atau Flex.
Penggunaan Expanded digunakan untuk untuk memaksa anak-anaknya mengisi ruang yang tersedia, dan Flexible untuk pembagian ruang dengan faktor fleksibilitas.

- **Padding**
Padding digunakan untuk memberikan padding di sekitar widget anak.
Penggunaan Padding digunakan untuk menambahkan ruang di sekeliling widget.

- **Align dan Center**
Align dan Center digunakan untuk mengatur posisi anak-anaknya dalam dirinya.
Penggunaan Center digunakan untuk memusatkan anak-anaknya, sementara Align memungkinkan penyesuaian posisi lebih spesifik.

- **Scaffold**
Scaffold menyediakan struktur dasar untuk layar di aplikasi material.
Penggunaan Scaffold digunakan untuk membuat struktur dasar aplikasi, termasuk AppBar, Drawer, BottomNavigationBar, dan FloatingActionButton.

### Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
Pada tugas kali ini saya hanya menggunakan 2 elemen input, yaitu TextFormField dan ElevatedButton. Berikut penjelasan terkait alasan penggunaan kedua elemen input tersebut.
- **`TextFormField`**
  * TextFormField sangat fleksibel dan dapat digunakan untuk berbagai jenis input teks, baik itu nama, jumlah, atau deskripsi.
  * Sangat memungkinkan kita untuk dengan mudah menambahkan validasi input. Misalnya, memastikan bahwa field 'name' tidak kosong, 'amount' adalah angka, dan seterusnya.
  * TextFormField bekerja dengan baik dalam widget Form, memungkinkan pengelolaan state dan validasi form secara keseluruhan.
  * Dengan menggunakan TextFormField, kita dapat menjaga konsistensi tampilan dan perilaku field input teks di seluruh aplikasi.

- **`ElevatedButton`**
  * ElevatedButton menyediakan tombol yang mudah digunakan dan diakses oleh pengguna, dengan feedback visual yang jelas saat ditekan.
  * Sesuai dengan desain material, ElevatedButton memberikan dimensi dan bayangan, membuatnya menonjol di antara elemen lain.
  * Tombol ini sering digunakan untuk memicu aksi seperti mengirimkan data form, menyediakan cara yang jelas dan intuitif bagi pengguna untuk menyelesaikan tindakan dalam form.
### Bagaimana penerapan clean architecture pada aplikasi Flutter?
- Pembagian Layer
  * Presentation Layer: Ini adalah lapisan yang berisi UI (User Interface) dan logika tampilan. Di Flutter, ini termasuk widget dan screen. ViewModel juga bagian dari lapisan ini, yang berfungsi sebagai perantara antara lapisan bisnis dan UI.
  * Business Logic Layer (BLL): Lapisan ini, sering kali disebut juga sebagai domain layer, mengandung aturan bisnis dan kasus penggunaan aplikasi. Ini adalah tempat di mana logika aplikasi diimplementasikan, terpisah dari UI.
  * Data Layer: Lapisan ini bertanggung jawab atas pengelolaan data, baik itu berasal dari database lokal, API jaringan, atau sumber lain. Ini termasuk repository, model data, dan data source.

- Penerapan Prinsip-Prinsip:
  * Prinsip Single Responsibility: Setiap kelas harus memiliki satu tanggung jawab saja.
  * Dependency Inversion: Modul tingkat tinggi tidak harus bergantung pada modul tingkat rendah. Kedua harus bergantung pada abstraksi.
  * Abstraksi dan Encapsulation: Memisahkan implementasi dengan interface.

- Dependency Injection (DI):
  * Gunakan DI untuk mengurangi ketergantungan langsung antara berbagai komponen. Hal ini juga mempermudah pengujian karena memungkinkan penggantian implementasi dengan mock saat diuji.

- Repository Pattern:
  * Gunakan repository pattern dalam lapisan data untuk mengabstraksi akses data dari BLL.
  * Repository berinteraksi dengan berbagai sumber data dan menyediakan antarmuka yang bersih ke BLL.

- State Management:
  * Pilih solusi state management (seperti Provider, Bloc, Redux, dll.) yang mendukung arsitektur bersih.
  * Pastikan bahwa logika state management terpisah dari UI.

- Testing:
  * Unit test untuk setiap lapisan. Pastikan setiap lapisan dapat diuji secara independen.
  * Gunakan mock dan dependency injection untuk mengisolasi unit tes.

- Modularitas:
  * Pisahkan fitur besar menjadi modul atau package yang lebih kecil.
  * Ini membantu dalam mengelola dependensi dan meningkatkan kejelasan kode.
  * Continuous Integration/Continuous Deployment (CI/CD):

Terapkan CI/CD untuk memastikan bahwa setiap perubahan kode melewati tahapan build dan test secara otomatis.
### Jelaskan step by step penyelesaian tugas

#### Halaman Formulir Tambah Item Baru
1. Pertama-tama saya membuat sebuah berkas baru pada direktori lib dengan nama file `form_konserku.dart` yang dimana akan digunakan untuk meminta input dari user.
2. Selanjutnya saya menggunakan _formkey untuk mengelola state form dan validasi input yang dibutuhkan.
3. Selanjutnya kita perlu tambahkan widget widget yang dibutuhkan dalam form. sebagai salah contoh adalah kita akan masukkan field form yang digunakan untuk meminta input dari user berupa text yang nantinya terdapat beberapa yang dikonversi menjadi angka. untuk tiap field juga saya lakukan validasi agar input yang dimasukkan merupakan input yang valid.
4. Terakhir saya perlu menambahkan tombol `save` sebagai child widget di dalam column. Saya juga menambahkan `showDialog()` pada `onPressed()` untuk menampilkan pop-up konfirmasi.

#### Menambahkan navigasi ke halaman form tambah item
1. Pertama-tama bukalah berkas `menu.dart` lalu pindah InventoryItem ke dalam file `menu_card.dart`. 
2. Selanjutnya  bukalah berkas yang berjudul `menu_card.dart` lalu cari atribut onTap dari widget InkWell. Tambahkan kode untuk menggunakan Navigator.push dalam onTap. Ini akan mengarahkan pengguna ke halaman form tambah item baru ketika tombol Tambah Item ditekan.

#### Memuncul popup message setelah `Save` item yang ingin dimasukkan
1. Pada halaman form tambah item, cari tombol `Save`.
2. Setelah itu kita perlu mencari atribut onPressed dan mencari atribut dari tombol `Save`, tambahkan fungsi `showDialog()`. Dalam `showDialog()`, gunakan widget `AlertDialog` untuk menampilkan data yang diisi dalam form.
3. Tambahkan juga fungsi untuk mereset form setelah data disimpan.

#### Membuat LeftDrawer
1. Pertama-tama Buat berkas baru dengan nama `left_drawer.dart` di dalam direktori widgets.
2. Dalam left_drawer.dart, tulis kode untuk membuat komponen LeftDrawer.
3. Import halaman yang diperlukan untuk menambahkan ke dalam menu Drawer. Ini termasuk halaman utama dan halaman tambah item baru. Atur navigasi untuk setiap opsi di Drawer menggunakan Navigator.pushReplacement().
4. Tambahkan kode untuk membuat header drawer sesuai dengan desain yang diinginkan.

#### Melakukan Refactoring
1. Buat berkas baru dengan nama `menu_card.dart` di dalam direktori widgets. Pindahkan konten widget ShopItem dari menu.dart ke `menu_card.dart`.
2. Import `form_konserku.dart` ke dalam `menu_card.dart` untuk memastikan ketersediaan dependensi yang dibutuhkan.
3. Import `menu_card.dart` ke dalam menu.dart agar widget ShopItem tetap dapat digunakan. Pindahkan `menu.dart` dan `form_konserku.dart` ke dalam folder baru screens untuk organisasi yang lebih baik.


## To Do List Tugas 9
- [] Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.
- [x] Membuat halaman login pada proyek tugas Flutter.
- [x] Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
- [x] Membuat model kustom sesuai dengan proyek aplikasi Django.
- [x] Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy. 
    * Tampilkan name, amount, dan description dari masing-masing item pada halaman ini.

- [x] Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
    * Halaman ini dapat diakses dengan menekan salah satu item pada halaman daftar Item.
    * Tampilkan seluruh atribut pada model item kamu pada halaman ini.
    * Tambahkan tombol untuk kembali ke halaman daftar item.

- [x] Menjawab beberapa pertanyaan berikut pada README.md pada root folder (silakan modifikasi README.md yang telah kamu buat sebelumnya; tambahkan subjudul untuk setiap tugas).
    * Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
    * Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
    * Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
    * Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
    * Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
    * Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

- [x] Melakukan add-commit-push ke GitHub.

### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Pengambilan data JSON tanpa membuat model terlebih dahulu sebenernya dapat dilakukan. metode atau cara ini dikenal dengan istilah *dynamic* dimana kita akan menangani struktur data JSON secara langsung tanpa menggunakan model yang didefinisikan sebelumnya. Namun, pendekatan ini memiliki beberapa kelemahan, seperti ketidakpastian dalam struktur data dan kurangnya keamanan tipe data. Dalam banyak kasus, menggunakan model untuk mengonversi data JSON ke dalam objek dengan tipe yang sudah didefinisikan dapat memberikan kejelasan dan keamanan yang lebih baik.

### Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest berguna untuk menyimpan sesi pengguna yang telah masuk ke dalam aplikasi Flutter, mempermudah integrasi dengan server web, terutama untuk fitur-fitur seperti logout, formulir item, dan pengambilan data yang memerlukan informasi dari pengguna yang sedang masuk.

Dengan menggunakan CookieRequest, aplikasi dapat mengelola informasi sesi atau token otentikasi melalui cookie, memungkinkan akses yang mudah ke fitur-fitur tertentu seperti logout, pengisian formulir item, dan pengambilan data yang terkait dengan pengguna yang telah masuk ke dalam aplikasi. Ini membantu dalam menyimpan dan mengelola keadaan sesi pengguna dengan efisien di seluruh komponen aplikasi Flutter.

### Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
Mekanisme yang digunakan untuk mengambil data dari JSON pada project django dan menampilkannya di Flutter melibatkan beberapa langkah:

Pengambilan Data JSON: Gunakan HTTP package untuk membuat permintaan HTTP ke server yang menyediakan data JSON. Dengan mendapatkan respons, saya mendapatkan data dalam format JSON.

Konversi JSON ke Objek Dart: Buat model Dart yang mencerminkan struktur data JSON. Dalam kasus ini, kita dapat menggunakan tools seperti json_serializable untuk membuat konversi otomatis antara JSON dan objek Dart.

Pemrosesan dan Penyimpanan Data: Lakukan pemrosesan data yang diperlukan dan simpan dalam state manajemen keadaan (state management) seperti Provider atau Bloc agar dapat diakses oleh komponen UI.

Tampilan di Flutter: Gunakan komponen Flutter seperti ListView, GridView, atau widget kustom untuk menampilkan data tersebut.


### Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Mekanisme otentikasi dari input data akun pada Flutter ke Django melibatkan beberapa langkah:

1. Input Data Akun di Flutter: Pengguna memasukkan informasi akun (seperti nama pengguna dan kata sandi) melalui antarmuka pengguna di aplikasi Flutter.

2. Pengiriman Data ke Django: Gunakan HTTP package untuk mengirim data ke server Django melalui permintaan HTTP, seperti metode POST.

3. Autentikasi oleh Django: Django memproses permintaan dan memverifikasi informasi akun. Jika informasi valid, Django dapat menghasilkan token otentikasi dan mengirimkannya kembali ke aplikasi Flutter.

4. Penanganan Token di Flutter: Aplikasi Flutter menyimpan token otentikasi dan menggunakannya untuk permintaan berikutnya ke server Django. Ini biasanya dilakukan dengan menyimpan token di local storage atau state manajemen.

5. Tampilan Menu pada Flutter: Berdasarkan status otentikasi (misalnya, apakah token tersedia), aplikasi Flutter menentukan tampilan yang sesuai. Jika otentikasi berhasil, menu atau tampilan yang sesuai dengan pengguna yang terautentikasi dapat ditampilkan.

### Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
- Drawer : Widget ini digunakan untuk membuat drawer yang dapat diakses oleh pengguna dengan menggeser dari sisi layar.

- ListTile : ListTile digunakan untuk membuat item list yang dapat diklik.

- TextFormField : Widget ini menyediakan input field untuk pengguna memasukkan teks.

- ElevatedButton : ElevatedButton membuat tombol dengan tampilan yang meningkatkan tampilan visualnya.

- AlertDialog : AlertDialog digunakan untuk menampilkan popup dengan pesan atau opsi yang memerlukan tanggapan pengguna.

- FutureBuilder : Widget ini memungkinkan pembangunan widget berdasarkan nilai yang akan datang atau hasil dari Future.

- CircularProgressIndicator : Digunakan untuk menampilkan indikator loading berbentuk lingkaran yang berputar.

- ListView.builder : Membuat daftar item dengan cara yang efisien secara membangun item hanya ketika diperlukan.

- GridView.builder : Mirip dengan ListView.builder, tetapi digunakan untuk menampilkan item dalam tata letak grid.

- Card : Widget ini digunakan untuk menampilkan konten terkemas dalam kotak dengan sudut yang membulat dan bayangan.

- FloatingActionButton : FloatingActionButton adalah tombol yang mengapung di atas antarmuka pengguna dan memberikan tindakan utama.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

#### login.dart dan register.dart
1. Menggunakan CookieRequest untuk mengirim data ke web server dan menyimpan sesi pengguna yang terautentikasi.
2. Menampilkan popup informasi ketika login atau register berhasil.
3. Pindah ke halaman utama setelah login atau register berhasil.

#### Model Items
1. Dibuat menggunakan quicktype.io untuk mengonversi JSON dari web server menjadi model Dart.

#### itemlist.dart
1. Menggunakan FutureBuilder untuk menangani data yang akan datang dari web server.
2. Menggunakan CircularProgressIndicator untuk menampilkan indikator loading saat data sedang diambil.
3. Mengimplementasikan filtering data untuk menampilkan item yang dimiliki oleh pengguna yang sedang login.
4. Membuat card untuk setiap item dengan menampilkan atribut dari model item.

#### itemform.dart
1. Menggunakan TextFormField untuk input field dan ElevatedButton untuk tombol.
2. Menggunakan AlertDialog untuk menampilkan popup.
3. Berfungsi untuk membuat item baru.

#### ItemDetail
1. Membuat halaman detail (itemdetail.dart) untuk menampilkan informasi lebih lanjut tentang item yang dipilih.
2. Menambahkan ElevatedButton untuk navigasi ke halaman detail setiap item.
3. Menambahkan tombol kembali untuk kembali ke halaman utama.
4. Selain itu, saya melakukan manajemen sesi pengguna dengan CookieRequest, menangani proses otentikasi, dan mengambil data dari server Django. Penggunaan Drawer dan navigasi antar halaman meningkatkan pengalaman pengguna, sementara penggunaan widget seperti ListView.builder, Card, dan TextFormField memberikan tampilan yang baik dan fungsionalitas yang diperlukan.