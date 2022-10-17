# Writing Test Week-4
DAY 1 : Asynchronous - Fetch dan Async/await
Fetch yaitu kegiatan untuk meminta sebuah data pada website secara local maupun public, untuk mengambil response resource berupa data berformat json atau text yang dilakukan programmer untuk membuat website yang membutuhkan data dari website lain.

Contoh Fetch
  fetch("https://digimon-api.vercel.app/api/digimon")
  .then((result) => result.json())
  .then((result) => {
    console.log(result);
  });


Contoh Async/await
Async yaitu fungsi tersebut selalu mengembalikkan promise. Value lain dibungkus didalam promise yang resolve secara otomatis. sedangkan await membuat JavaScript menunggu sampai promise tersebut selesai dan mengembalikkan hasilnya.

let getDataDigimon = async () => {
  let response = await fetch("https://digimon-api.vercel.app/api/digimon");
  let result = await response.json();
  console.log(result);
};

getDataDigimon();

DAY 2 : Github Lanjutan
Git Branch
Jika kita sedang berkolaborasi di repostory yang sama, maka kita harus membuat branch sendiri agar tidak terjadi konflik

git branch branch_saya : Membuat branch baru

Dengan membuat masing masing branch, maka setiap orang tidak perlu khawatir akan terjadinya konflik dalam menambahkan kode kode mereka

Pindah ke branch yang baru saja dibuat git checkout branch_saya

Jika sudah berhasil membuat branch baru, lakukan commit

Menggabungkan Branch

Sebagai contoh jika kita berhasil membuat sebuah fitur pada cabang "branch_saya", sekarang ingin menggabungkannya dengan cabang 'master'

Pindah ke cabang master git checkout master
Lalu gabung dengan git merger branch_saya
Git Reset

Git reset adalah sebuah perintah yang dapat digunakan untuk membatalkan perubahan yang dilakukan, semua perubahan yang telah direset tidak dapat dikembalikan lagi

Git Revert

Git Revert adalah sebuah perintah untuk mengembalikan kondisi file yang ada sebelumnya, dan akan digabungkan dengan commit-an terakhir saat ini, git revert lebih aman digunakan daripada git reset, karena tidak akan menghapus catatan log git sebelumnnya

DAY 3 : Responesive Web Design dan Bootstrap
Responesive Web Design adalah agar desain website bisa dapat dilihat atau diakses pada device apapun.

Viewport <meta name="viewport" content="width=device-width, initial-scale=1.0">
Viewport HTML adalah cara sederhana untuk mengatur agar tampilan website menjadi responsive

CSS Media Query
Media query merupakan modul CSS3 yang berguna membuat layout kita responsive dengan menyesuaikan tampilan berdasarkan ukuran layar perangkat.

Jenis Media Query
min-width
max-width
Relative Unit
Ini berguna untuk mendesain website yang responsive karena ukurannya bisa berubah relatif terhadap parent atau ukuran layar

Flex dan Grid
Flex dan Grid sama-sama berfungsi untuk mengatur tampilan sebuah halaman web menjadi lebih terstruktur dan rapi. Perbedaannya hanya terletak pada arah pembagian dimensinya saja.

Bootstrap 5
Bootstrap adalah sebuah framework untuk front-end dapat mmebuat sebuah website dengan cepat.

Kenapa Bootstrap ?
Lebih Mudah dan cepat dalam pembuatan tampilan website
Fokus pada responsive mobile dan membuat website menjadi lebih interaktif tanpa membuat banyak CSS dan Javascript dari awal
Starter dari Bootstrap 5
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
  </head>
  <body>
    <h1>Hello, world!</h1>
  </body>
</html>