# Writing Test Week-3

## JavaScript - Array

### Apa itu Array?
 Array adalah kumpulan data dengan tipe serupa. Array dapat menyimpan tipe data String, Number, Boolean, dan lainnya.

### Membuat Array
- Array didefinisikan menggunakan square brackets```[]```
### Mengakses/Memanggil Array
Array pada javascript dihitung dari index data ke-0.
Data pertama adalah index ke-0.

contoh array & cara memanggilnya

 ```javascript
 let arr = ["hallo", 1, true]

console.log(arr);

//memanggil array index ke-

//console.log(arr[0]);
//console.log(arr[1]);
//console.log(arr[2]);
```

### Update Array
- Const in Array
    - Jika menggunakan ```let```, kita dapat mengubah array  dengan array baru dan konten nilai yang ada di dalam array dengan nilai lain.
    - ```Const``` tidak bisa melakukan update data. Namun pada Array kita dapat melakukan update konten nilai di dalam array (mutable).
    - Yang tidak bisa adalah mengubah array dengan array yang baru jika menggunakan ```const```.

### Array Properties
Array memiliki 5 properti yang sering digunakan yaitu
 - constructor, 
 - length, 
 - index, 
 - input, dan 
 - prototype.

### Array Method
Array memiliki method atau biasa disebut built-in methods.
Artinya Javascript sudah memudahkan kita dengan menyediakan function/method umum yang bisa kita gunakan.
Kita tidak perlu membuat function lagi jika method yang kita butuhkan sudah tersedia.
Contoh Array Built-in Methods :
- ```.push()```
Method untuk menambahkan item array pada urutan yang paling akhir.

- ```.pop()```
Method yang menghapus item array index terakhir.

- ```.shift()```
Method untuk menghapus item Array pada index pertama.

- ```.unshift()```
Method untuk menambahkan item Array pada index pertama

- ```.sort()```
Method untuk mengurutkan secara Ascending atau Descending Alphanumeric.

### Looping pada Array
Array memiliki built in methods untuk melakukan looping yaitu:
- ```forEach()```method untuk melakukan looping pada setiap elemen array. 

    Contoh :
    ```javascript
    const merekMotor = ['Yamaha','Honda']
    merekMotor.forEach(element =>{
        console.log(element);
        });
        //Output : 'Yamaha','Honda'
    ```

- ```.map()```melakukan perulangan/looping dengan membuat array baru. 

    Contoh :

    ``` javascript
    let number = [1,2,3,4];
    let doubled = number.map(num => {
    return num * 2
    });

    console.log(doubled);
    //Output : [2,4,6,8]
    ```
>Jadi, gunakan ```.forEach()``` jika hanya memerlukan looping untuk menampilkan saja atau menyimpan ke database. Gunakan ```.map()``` jika akan melakukan operasi pada array seperti yang dapat mengubah nilai array sebelumnya.

## Javascript - Multidimensional Array

Multidimensional Array bisa dianalogikan dengan array of array. Ada array di dalam array.

Contoh :
```javascript
let inventory = [
    ['Kaos Polos',5],
    ['Hoodie', 12]
]

console.log(inventory)
```
### Akses index multidimensional array

Contoh :
```javascript
let inventory = [
    ['Kaos Polos',5],
    ['Hoodie', 12]
]

console.log(inventory[1][0]) //Output : Kaos Polos
```
### Operation using map in multidimensional array

Contoh :
```javascript
let inventory = [
    ['Kaos Polos',5],
    ['Hoodie', 12]
]
inventory.map(dataInventory => {
  terjual = 100 - dataInventory[1]
  dataInventory[2] = terjual
})
console.table(inventory)
```
### Looping For Multidimensional Array
Contoh :
```javascript
let inventory = [
    ['Kaos Polos',5],
    ['Hoodie', 12]
]
inventory.forEach(baris) => {
  baris.forEach(column) => {
  console.log(column)
  }
}
//Output :
//Kaos Polos
//5
//Hoodie
//12
```
## JavaScript Object

### Object

Pada programming, ```object``` adalah sebuah tipe data pada variabel yang menyimpan ```properti``` dan ```fungsi (method)```.

```Properti``` adalah data lengkap dari sebuah ```object```.

```fungsi (method)``` adalah action dari sebuah ```object```. Apa saja yang dapat dilakukan dari suatu ```object```.

Contoh Object Mobil beserta properti dan methodnya

![screenshot properti](properti.jfif)

### Membuat sebuah object
object dapat diassign kedalam sebuah variable
```javascript
let person = {}; //object person
```
didalam object dapat menyimpan properti dengan tipe data apapun
```javascript
let person = {
  name: 'Isnaini',
  age: 19,
  isVerified; true,
};
```
### Mengakses Object dan Properti Object
```javascript
console.log(person); //mengakses seluruh object
console.log(person.name); //mengakses properti object
```
bisa menggunakan bracket notation saat memanggil properti sebuah object
```javascript
console.log(person['name']);
```

### Update Object
dapat mengupdate value dari key yang sudah ada serta dapat menambahkan key dan value baru
```javascript
let person = {
name: 'Isnaini',
age: 19,
isVerified: true,
};

//update current key
person.age = 20;

//menambahkan key dan value baru
person.address = 'Seoul, Korea Selatan'

//memanggil object
console.log(person);

//menghapus properti object
delete person.age;
```
### Method
Jika value yang kita masukkan pada property berupa function, Maka itu disebut method.

Kita bisa membuat method custom untuk kita gunakan pada aplikasi kita loh. Kita akan membuat method untuk greeting pada aplikasi ecommerce misalnya.


contoh:
```javascript
const greeting = {
  welcome: function() {
      return 'halo selamat datang'
  },
  afterPay: function() {
      return 'Thank You'
  },
 };
 console.log(greeting.welcome()); //Output : 'halo selamat datang'
 console.log(greeting.afterPay()); //Output : 'Thank You'
```
### Nested Object
Object yang berasal dari turunan obect lainnya

contoh :
```javascript
const employeeInfo = {
    employeeName: "John Doe",
    employeeId: 27,
    salary: {
        2018-19: "400000INR",
        2019-20: "500000INR",
        2020-21: "650000INR"
    },
    address: {
        locality: {
            address1: "1600 pebble road",
            address2: "Nearby XYZ Bank",
        },
        city: "Mumbai",
        state: "Maharashtra",
        country: "India"
    }
}
```
## JavaScript - Recursive dan Modules
Rekrusif adalah function atau algoritma yang memanggil dirinya sendiri sampai kondisi tertentu. Rekrusif ini mirip seperti looping. Misalnya pada gambar ada gambar di dalam gambar. Terdapat 2 kunci pada rekrusif,yaitu base case atau titik berhenti dan recrusion case atau titik memanggil function. 

Contoh script :

Menampilkan bilangan 1 2 3 4 5
```javascript
function deretAngka(n){
 if (n == 1) {
   console.log(n)
 } else {
   deretAngka(n-1)
   console.log(n);
  }
}
deretAngka(3)

//Atau contoh lain :
//Mencari angka faktorial
//Misalnya 5!
//Solusinya jika dijabarkan 5 x 4 x 3 x 2 x 1

function faktorial(n) {
  if (n == 1) {
    return 1
  } else {
    return n * faktorial(n - 1)
  }
}
console.log(faktorial(3))
//Output = 6
```
## Modules 
Modules adalah cara untuk memisahkan kode ke file yang berbeda. Keuntungan dari modules yaitu mudah untuk mengelola kode serta kode tidak menumpuk di dalam satu file. Terdapat 2 kata kunci pada modules yaitu export dan import. 

Contoh script :

```javascript
// File Jepang.js
export let motor = ["suzuki", "yamaha", "honda", "kawasaki"]

let entertainment = ["anime", "manga", "wibu", "dorama"]
export default entertainment

export function sayHello() {
 console.log("hallooo")
}

import {apple} from './amerika.js';
 console.log(apple);

// File Indonesia.js
import {motor} from "./Jepang.js"
 console.log(motor);

import Entertainment, { motor as motorJepang, sayHello  } from "./jepang.js"
console.log(Entertainment);

// File Amerika.js
let apple = ["iphone", "macbook", "imac"]
  export {apple}
```
Berdasarkan script diatas,
- Indonesia hanya bisa import, karena dia file utama.
- Jepang bisa melakukan import dan export.
- Amerika hanya melakukan export.
>Hal hal yang harus dilakukan saat membuat modules adalah menambahkan type="module" pada script utama, lalu siapkan script ke-2 dan sebagainya untuk melakukan export, serta lakukan import pada file atau script utama.

## JavaScirpt - Asynchronus

Pada konsep asynchronous, code akan dieksekusi tanpa menunggu eksekusi code lain selesai sehingga seakan-akan dieksekusi secara bersamaan.

Kita bisa menggunakan simulasi berikut:
```javascript
console.log('Hi Brachio');

setTimeout(function () {
  console.log('the time has come');
}, 3000);

console.log('to learn how to code');

//output
//Hi Brachio
//to learn how to code
//the time has come

```
setTimeout pada code di atas membuat kata the time has come akan ditampilkan setelah 3 detik.

Namun JavaScript tidak akan menunggu selama 3 detik tapi akan segera menampilkan kata to learn how to code.


JS Asynchronous memiliki 3 kunci utama :

1. Async

Segala function yang tidak diberi notasi adalah synchronous function dan tidak bisa menggunakan await, Mengubah function menjadi async tidak akan membuat kode kita error.

2. Await

Sesuai dengan artinya, perintah ini memastikan sebuah function ditunggu hingga selesai sebelum function yang kita tulis dilanjutkan ke baris berikutnya.

3. Promise

Promise itu sendiri sebenarnya sudah merupakan pembicaraan yang panjang. Tapi singkatnya, Promise adalah sebuah object yang mempunyai callback yang berfungsi untuk memberitahu kalau function sudah selesai dijalankan. Function dinyatakan selesai jika ```resolve()``` sudah dipanggil. Sehingga await pada async function akan menunggu hingga ```resolve()``` dipanggil sebelum melanjutkan ke baris berikutnya. Jika kita memberi await pada sebuah fungsi yang tidak mengembalikan Promise, maka tidak akan ada yang terjadi. Fungsi tersebut tidak akan ditunggu dan kode akan terus dieksekusi.

## JavaScript Intermediate Web Storage
Ada beberapa cara untuk menyimpan data pengguna seperti pencarian, artikel berita, dan lain-lain ke lokal (browser) menggunakan web storage seperti cookies, local storage, dan session storage. 

Data ini dimanfaatkan oleh situs web tersebut untuk merekam kebiasaan pengguna agar dapat memberikan rekomendasi sesuai preferensi si pengguna tersebut.

### Local Storage & Session Storage
Saat melakukan pencarian pada sebuah situs lalu situs tersebut menampilkan riwayat pencarian, data pencarian tersebut disimpan ke dalam local storage untuk diolah menjadi riwayat pencarian.

 Itulah salah satu contoh penerapan dari local storage pada aplikasi web.

Berbeda dengan local storage, walaupun masuk ke dalam web storage, data yang tersimpan pada session storage akan hilang ketika session dari sebuah laman berakhir.

Karakteristik Local Storage:

- Menyimpan data tanpa tanggal kadaluarsa.
- Data tidak akan dihapus ketika web browser ditutup dan akan tersedia seterusnya selama kita tidak menghapus data local storage pada web browser.
- Dapat menyimpan data hingga 5MB.
- Hanya dapat menyimpan data string.

Sedangkan Karakteristik Session Storage:
- Data yang disimpan pada session storage akan terus tersimpan selama browser terbuka dan tidak hilang jika laman di-reload.
- Membuka banyak tab/window dengan URL yang sama, akan menciptakan session storage yang berbeda di masing-masing tab/window.
- Menutup tab/window akan mengakhiri session dan menghapus data yang tersimpan di session storage pada tab/window tersebut.
- Data yang tersimpan dalam session storage harus berbentuk string.
Hanya dapat menyimpan data sebanyak 5MB.

Mengakses Local Storage & Session Storage

Local Storage
Menyimpan Data Untuk menyimpan data pada local storage, kita menggunakan method ```setItem()``` yang membutuhkan 2 parameter. Parameter pertama adalah key yang ingin kita simpan dan parameter kedua adalah data (value) dari key yang akan disimpan.

```localStorage.setItem('key', value);```
Mengambil Data Untuk mengambil data yang telah tersimpan pada local storage, kita dapat menggunakan method ```getItem()``` yang membutuhkan 1 parameter. Parameter tersebut adalah key dari data yang kita inginkan. javascript ```localStorage.getItem('key');```

Menghapus Data Untuk menghapus data yang telah tersimpan pada local storage, kita dapat menggunakan method ```removeItem()``` yang membutuhkan 1 parameter. Parameter tersebut adalah key dari data yang ingin kita hapus.

```javascript
// menghapus key tertentu
localStorage.removeItem('key');

// menghapus semua key
localStorage.clear();
Session Storage
Menyimpan Data Sama dengan local storage, sintaks untuk menyimpan data pada session storage adalah sebagai berikut:

// menambah session storage
sessionStorage.setItem('key', value);
Mengambil Data Sama seperti local storage, cara mendapatkan data dari session storage juga menggunakan getItem(), seperti berikut ini:

// mendapatkan session storage
sessionStorage.getItem('key');
Menghapus Data Syntax untuk menghapus data dari session storage ada 2, yaitu:

// menghapus session storage satu persatu berdasarkan key
sessionStorage.removeItem('key');

// menghapus seluruh session storage sekaligus
sessionStorage.clear();
```
