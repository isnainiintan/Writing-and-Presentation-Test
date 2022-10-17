# Writing Test Week-4

## Asynchronous - Fetch dan Async/await
Fetch yaitu kegiatan untuk meminta sebuah data pada website secara local maupun public, untuk mengambil response resource berupa data berformat json atau text yang dilakukan programmer untuk membuat website yang membutuhkan data dari website lain.

Contoh Fetch
```javascript
  fetch("https://digimon-api.vercel.app/api/digimon")
  .then((result) => result.json())
  .then((result) => {
    console.log(result);
  });
```
• Mengambil data API menggunakan fetch

```JavaScript
fetch("https://digimon-api.vercel.app/api/digimon")
.then(result => result.json())
.then(result => {
  console.log(result)
})
```


Async yaitu fungsi tersebut selalu mengembalikkan promise. Value lain dibungkus didalam promise yang resolve secara otomatis. sedangkan await membuat JavaScript menunggu sampai promise tersebut selesai dan mengembalikkan hasilnya.

Contoh Async/await
```javascript
let getDataDigimon = async () => {
  let response = await fetch("https://digimon-api.vercel.app/api/digimon");
  let result = await response.json();
  console.log(result);
};

getDataDigimon();
```
• Error Handling
<br>Untuk menghandle error Async/Await kita dapat menggunakan try catch di dalam function yang kita buat, sehingga jika terjadi error kita dapat menangkap errornya dalam block catch.

```JavaScript
const getAllUser = async ()=> {
	try {
		const result = await getUser()
		console.log(result)
	} catch (error) {
		console.log(error)
	}
}
```

# Github Lanjutan
  -  ```Git Branch``` Jika kita sedang berkolaborasi di repostory yang sama, maka kita harus membuat branch sendiri agar tidak terjadi konflik

      - git branch branch_saya : Membuat branch baru

      >Dengan membuat masing masing branch, maka setiap   orang tidak perlu khawatir akan terjadinya konflik dalam menambahkan kode kode mereka

      - Pindah ke branch yang baru saja dibuat git checkout branch_saya

      - Jika sudah berhasil membuat branch baru, lakukan commit

      Menggabungkan Branch

      Sebagai contoh jika kita berhasil membuat sebuah fitur pada cabang "branch_saya", sekarang ingin menggabungkannya dengan cabang 'master'

      Pindah ke cabang master git checkout master
      Lalu gabung dengan git merger branch_saya

  - ```Git Reset``` adalah sebuah perintah yang dapat digunakan untuk membatalkan perubahan yang dilakukan, semua perubahan yang telah direset tidak dapat dikembalikan lagi

  - ```Git Revert``` adalah sebuah perintah untuk mengembalikan kondisi file yang ada sebelumnya, dan akan digabungkan dengan commit-an terakhir saat ini, git revert lebih aman digunakan daripada git reset, karena tidak akan menghapus catatan log git sebelumnnya

### Membuat Repository Git

1. Buat folder di laptop/komputer
2. masuk ke folder tersebut, kemudian klik kanan pilih "Git Bash Here"
3. ketikan git init. Sekarang folder yang dibuat tadi sudahh menjadi repository

### Melakukan commit pada Git

1. Buat satu atau dua file
2. Ketikkan "git add ." untuk melacak perubahan
3. Kemudian baru ketikkan "git commit -m "(pesan perubahan)" untuk melakukan commit

### Merge pada Git

1. User membuat repository baru.
2. melakukan cloning ke local computer/laptop
3. User membuat branch baru kemudian masuk ke branch tersebut dengan command `git branch nama_branch` kemudian `git checkout nama_branch`
4. User melakukan pull branch main ke branch user, dengan command `git pull origin nama_branch_user`
5. User membuat file baru
6. User melakukan push ke branch user, dengan command `git push origin nama_branch_user`. Sebelum melakukan push pastikan sudah melakukan add dan juga commit.
7. Buka Github, kemudian user melakukan pull request ke branch main.
8. Kemudian lakukan merge pull request agar file dari branch user bisa berada di branch main.

### Mempublish aplikasi ke Github

1. Membuat repository di github
2. Ketikkan "git remote add origin https://github.com/(username)/(repository yang dibuat).git" Untuk me-remote ke github
3. Ketikkan "git push -u origin (branch yang dipakai)"
4. Selesai. File sudah ada di Github

### Melakukan cloning Github ke local

1. buka repository yang ikin di cloning, kemudian klik code dan salin kode tersebut
2. Tentukan penyimpanan lokal, kemudian klik kanan dan pilih "Git Bash Here"
3. File yang ada di GitHub sudah selasai di cloning ke local

### Github Kolaborasi

Kita meisalkan ada user A dan user B, dan user A sebagai ketuanya.

1. User A membuat repository baru, kemudian menambahkan user B untuk collaborator dengan cara pergi ke settings > collaborators > tambahkan teman
2. User A dan user B membuat branch masing-masing, dengan command `git branch nama_branch`, kemudian masing-masing user pindah ke branch baru yang dibikin dengan command `git checkout nama_branch`
3. User A dan user B melakukan pull masing ke dalam branch masing-masing di local computer/laptop, dengan command `git pull origin main`
4. Misalkan user A ingin menambahkan file, maka user A membuat file terlebih dahulu, kemudian di push di branch user A, dengan command `git push origin nama_branch`
5. User kemudian user A melakukan pull request dan merge ke branch main, dengan cara yang sudah dijelaskan di materi sebelumnya.
6. Jika user B igin menambahkan file, maka user harus melakukan pull request kembali, agar nanti tidak ada error atau kesalahan.
7. Kemudian user B bisa melakukan push ke dalam branch nya.
8. User B kemudian melakukan pull request.
9. User B tidak perlu melakukan merge, dan yang melakukan merge adalah user A karena dia adalah pemimpinnya.
10. Ulangi dari langkah ke-4

# Responesive Web Design dan Bootstrap
Responesive Web Design adalah agar desain website bisa dapat dilihat atau diakses pada device apapun.

## CSS Media Query
Media query merupakan modul CSS3 yang berguna membuat layout kita responsive dengan menyesuaikan tampilan berdasarkan ukuran layar perangkat.

Jenis Media Query
  - min-width
  - max-width
  - Relative Unit
Ini berguna untuk mendesain website yang responsive karena ukurannya bisa berubah relatif terhadap parent atau ukuran layar

<br> Membuat beberapa style bergantung pada jenis device
   <br> Kata kunci : @media. Contoh :

```javascript
@media (max-width: 500px) {
}
```

>Keterangan : Jika ukuran layar dibawah 500px maka style settingan didalam @media yang berlaku

## Flex dan Grid
Flex dan Grid sama-sama berfungsi untuk mengatur tampilan sebuah halaman web menjadi lebih terstruktur dan rapi. Perbedaannya hanya terletak pada arah pembagian dimensinya saja.

Bootstrap 5
Bootstrap adalah sebuah framework untuk front-end dapat mmebuat sebuah website dengan cepat.

Kapan Bootstrap bisa digunakan ?
ketika kita ingin membuat website kita menjadi responsif dengan cara lebih mudah dan cepat dalam pembuatan tampilan website
Fokus pada responsive mobile dan membuat website menjadi lebih interaktif tanpa membuat banyak CSS dan Javascript dari awal.

1. Breakpoint : sebagai acuan untuk menyesuaikan tampilan dalam berbagai ukuran viewport. Beberapa breakpoint pada bootstrap 5 sm, md, lg, xl, xxl
2. Containers : layout basicnya bootstarp
   - Default Container
     <br> Class container memiliki sifat yang responsive dan fixed-width, yang berarti lebarnya akan berubah pada setiap breakpoint
     ```javascript
     <div class="container">
     <!-- Content here -->
     </div>
     ```
   - Fluid Container
     <br> Class container-fluid memiliki lebar yang sama dengan viewport
     ```html
     <div class="container-fluid">
       <!-- Content here -->
     </div>
     ```
   - Responsive Container
     ```html
     <div class="container-sm">100% wide until small breakpoint</div>
     <div class="container-md">100% wide until medium breakpoint</div>
     <div class="container-lg">100% wide until large breakpoint</div>
     <div class="container-xl">100% wide until extra large breakpoint</div>
     <div class="container-xxl">100% wide until extra extra large breakpoint</div>
     ```
3. Grid : menyediakan 12 kolom system
   <br> Grid system membagi lebar halaman menjadi 12 bagian. Sehingga apabila menggunakan class col-8, maka lebarnya akan menjadi 8/12 atau 2/3 dari lebar halaman.
4. Columns
   <br> mengatur urutan posisi dan align

- Component pada bootstrap
  <br> beberapa component pada bootstrap 5
  - Alerts
  - Breadcrumb
  - Buttons
  - Card
  - Modal
  - Navbar
  - Navs & tabs
  - Pagination
- Content pada bootstrap
  - Reboot
  - Typography
  - Images
  - Tables
  - Figures