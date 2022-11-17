# TUAGS 7 (counter_7)

<br>Nama : Adly Renadi Raksanagara</br>
<br>NPM : 2106752306</br>
<br>Kelas : PBP A</br>

## 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Jawab : 
><br>Stateless widget merupakan suatu widget yang dimuat secara statis dimana seluruh konfigurasi yang dimuat didalamnya telah diinisiasikan sejak awal widget tersebut dimuat. Stateless widget juga adalah sebuah widget yang tidak dapat diubah dan tidak akan pernah berubah, sifatnya mutlak dan tidak dapat diganggu gugat.</br>
> <br>Sedangkan Stateful Widget merupakan suatu widget yang sifatnya dinamis atau dapat berubah-ubah, kebalikan dari stateless widget.Stateful widget dapat mengubah atau mengupdate tampilan, menambah widget laiinya, mengubah nilai variabel, icon, warna dll.</br>
>>Perbedaan dari kedua widget tersebut adalah jika memakai stateful widget maka kita dapat untuk memodifikasi isi widget selama aplikasi berjalan, misalnya pada lab minggu lalu dapat meng-*increment* nilai counter dan langsung ditampilkan pada layar aplikasi. Sedangkan menggunakan stateless widget, kita tidak terlalu dapat melakukan banyak hal dengan widget ini karena isi dari stateless widget bersifat statis; apa yang ditulis di awal tidak dapat berubah saat aplikasi dijalankan.

## 2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
Jawab : 

<br>`Scaffold`</br>
  - <p> Scaffold adalah widget utama untuk membuat sebuah halaman pada flutter </p>
<br> `Column`</br>
 - <p> Column berfungsi untuk mempermudah layouting</p>
<br>`Center`</br>
  - <p>Center berfungsi untuk Menaruh widget di dalamnya berada di tengah</p>
<br>`TextStyle`</br>
  - <p>textstyle berfungsi unutk memberikan styling pada text</p>
<br>`Text`</br>
  - <p>Text berfungsi untuk menampilkan text</p>
<br>`FloatingActionButton`</br>
  - <p>FloatingActionButton berfungsi untuk menjadi sebuah parent dimana yang diapitnya akan menerapkan style material design</p>
<br>`Text`</br>
  - <p>Text berfungsi untuk menampilkan text</p>
 <br>`Visibility`</br>
  - <p>Visibility berfungsi untuk mengatur kemunculan widget</p>
<br>`Text`</br>
  - <p>Text berfungsi untuk menampilkan text</p>
<br> `Stack` </br>
 - <p>Stack widget memungkinkan kita untuk menampilkan beberapa lapis widget ke layar</p>

## 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Jawab : 

> Fungsi `setState` merupakan sebuah fungsi untuk memberitahu widget bahwa ada objek yang berubah pada State sehingga aplikasi akan memuat ulang widget tersebut dengan nilai yang sudah diubah. Dengan fungsi tersebut akan melakukan *rebuild* pada widget tersebut sehingga aktivitas terakhir dapat tertampilkan dengan baik. Lalu, variabel yang dapat terdampak dengan fungsi setState() adalah semua variabel yang bersifat mutable dan bertipe global pada class tersebut. Variabel yang terdampak pada kali ini adalah variabel `_counter` karena pada program ini dilakukan fungsi `_incrementCounter()` dan `_decrementCounter`.

## 4. Jelaskan perbedaan antara const dengan final.
Jawab : 

>Perbedaan utama ada pada inialisasi nilai (pemberian nilai) dari variabelnya, const mengharuskan variabel harus dinialisasi pada saat kompilasi, nilai bersifat konstan dan secara langsung / eksplisit sehingga pada saat kompilasi variabel const sudah memiliki nilai, sedangkan final tidak mengharuskan variabel memiliki nilai secara langsung / eskplisit pada saat kompilasi

## 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
Jawab : 
- Membuat sebuah program flutter baru dengan nama counter_7.
- Menambahkan fungsi _decrementCounter() di bawah fungsi increment serta menambahkan logic bahwa hanya dapat berfungsi ketika nilai di dalam counter lebih dari 0.
- Menambahkan button baru dan diposisikan di kiri bawah dengan menggunakan stack align sebagai button decrement yang berfungsi mengurangkan nilai. 
- Menambahkan logic pada bagian button decrement bahwa hanya muncul ketika nilai counter lebih dari 0. Jadi ketika _counter <= 0, maka akan di hide buttonnya
- membuat Text untuk changecolor untuk mengecek nilai ketika dia ganjil atau genap dengan menggunakan modulo dan langsung mengubah textnya dan juga memberi warna pada text dengan bir dan merah sesuai ganjil dan genap.
- menjaankan aplikasi flutter run di terminal

# -------------------------------------------------------------------------------
# Read Me Tugas 8 

<br>Nama : Adly Renadi Raksanagara</br>
<br>NPM : 2106752306</br>
<br>Kelas : PBP A</br>

## <br>1. Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.</br>
 
 <br>`Navigator.push`</br>
 - <p>Navigator.push adalah sebuah navigator routing dimana dia akan menambahkan page pada top of stack saja.</p>
 <br>`Navigator.pushReplacement`</br>
 - Navigator.pushReplacement adalah  sebuah navigator routing yang akan menghapus page paling atas, lalu menambahkan page yang akan di routing artinya dia mengganti page pada urutan top of stack menjadi page yang baru akan di route.

## 2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
`MaterialApp`
- <p>menyediakan style bawaan dari parent</p>
`Scaffold`
- <p>implementasi dari material untuk struktur layout</p>
`Card`
- <p>styling bawaan dari material yang akan membentuk sebuah card</p>
`Text`
- <p>menampilkan text</p>
`ListView.builder`
- <p>menampilkan list of children</p>
`TextStyling`
- <p>memberikan styling pada widget text</p>
`Center`
- <p>memposisikan widget berada di tengah-tengah</p>
`Drawer`
- <p>sebuah list yang berisikan daftar navigasi</p>
`DropDownButton`
- <p>menyediakan pilihan input dengan pilihan salah satu saja</p>


## 3. Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
<br>1. `onPressed`</br>
<br>2. `onClick`</br>
<br>3. `onChanged`</br>
<br>4. `onSaved`</br>
<br>5. `onHover`</br>

## 4. Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
<br><p>Navigator dalam flutter memiliki cara kerja dengan prinsip stack dalam mengganti halaman. Halaman yang akan dimuat akan di-push pada top of stack, sedangkan jika ingin berpindah ke halaman sebelumnya, Navigator akan melakukan pop pada stack, sehingga page yang saat ini dilihat akan dihapus dari stack dan tampilan pengguna akan berganti ke halaman sebelumnya.</p></br>
## 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- membuat class formTambahBudget.dart dan data_budget sebgai form mengisi data yang datannhya di tampilkan dalam class data_budget.dart
- menambahkan drawer pada setiap page untuk berpindah pindah halaman
- membuat folder model dan membuat class final_budget.dart untuk menjadi model dari budget
