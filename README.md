# immocs
ThingsBoard dengan Docker Compose
Project ini menggunakan image thingsboard/tb-cassandra yang telah mencakup seluruh service ThingsBoard, termasuk database PostgreSQL dan Cassandra.

Persiapan
Sebelum menjalankan docker-compose.yml, buat terlebih dahulu dua direktori yang dibutuhkan dengan menjalankan script:

./create_directories.sh



Menjalankan ThingsBoard
Setelah direktori dibuat, jalankan ThingsBoard menggunakan perintah:

docker compose up -d


Pantau proses inisialisasi dengan:

docker compose logs -f


Tunggu hingga proses inisialisasi selesai, yang ditandai dengan munculnya log seperti pada gambar installation.png.


Akses Aplikasi
Aplikasi dapat diakses melalui:
http://localhost:9090

Akun Default
Gunakan akun berikut untuk login ke ThingsBoard:


System Administrator: sysadmin@thingsboard.org / sysadmin


Tenant Administrator: tenant@thingsboard.org / tenant


Customer User: customer@thingsboard.org / customer



Informasi Database
ThingsBoard menggunakan dua jenis database:

PostgreSQL


Nama Database: thingsboard


Username: thingsboard



Apache Cassandra


Keyspace: thingsboard


Tabel Utama:


ts_kv_cf: menyimpan data key-value time-series

ts_kv_partitions_cf: menyimpan informasi partisi time-series




Cleanup
Untuk menghapus direktori yang telah dibuat, jalankan script berikut:

./delete_directories.sh
