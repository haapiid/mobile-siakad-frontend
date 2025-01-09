import 'package:flutter/material.dart';
import 'package:siap/widgets/berita/search_field.dart';
import 'package:siap/widgets/berita/berita_terbaru.dart';
import 'package:siap/widgets/berita/berita_lainnya.dart';

class BeritaScreen extends StatelessWidget {
  const BeritaScreen({super.key});

  final List<String> beritaTerbaru = const [
    'Alur Yudisium dan Wisuda Agustus 2025',
  ];

 final List<Map<String, String>> beritaLainnya = const [
  {
    'title': 'Alur Pendaftaran Ujian Seminar Proposal...',
    'date': '2 Juli 2025',
    'image': 'lib/assets/images/purbaya.jpg',
    'content': 'Pendaftaran ujian seminar proposal kini lebih mudah dengan sistem berbasis online. Mahasiswa diwajibkan mengunggah dokumen, seperti proposal, lembar persetujuan, dan berkas lainnya melalui portal akademik kampus. Selain itu, seluruh syarat administrasi, termasuk pembayaran, harus dipenuhi sebelum batas waktu yang ditentukan. Setelah pengajuan, mahasiswa akan mendapatkan jadwal ujian yang sesuai dengan ketersediaan dosen penguji. Pastikan membaca panduan teknis yang disediakan untuk menghindari kesalahan dalam pengisian data. Jika terdapat kendala teknis, mahasiswa dapat menghubungi bagian akademik atau layanan bantuan kampus. Ujian ini merupakan langkah penting dalam proses penyelesaian studi, sehingga persiapkan diri dengan baik dan pastikan semua dokumen telah diverifikasi.'
  },
  {
    'title': 'Pemberitahuan Her-Registrasi Semester...',
    'date': '21 Juni 2025',
    'image': 'lib/assets/images/purbaya.jpg',
    'content': 'Her-registrasi semester baru telah resmi dibuka mulai tanggal 20 Juni 2025. Mahasiswa diwajibkan melakukan proses registrasi ulang melalui portal akademik dan memastikan pembayaran UKT sudah sesuai dengan nominal yang ditentukan. Registrasi ulang ini penting untuk memastikan status aktif mahasiswa dalam sistem akademik kampus. Jangan lupa untuk memeriksa data pribadi, termasuk alamat, nomor telepon, dan email yang terdaftar, agar informasi penting dari kampus dapat diterima dengan lancar. Jika ada perubahan data, segera lakukan pembaruan melalui bagian administrasi. Proses her-registrasi ini akan berlangsung hingga 5 Juli 2025, jadi pastikan semua langkah telah diselesaikan sebelum tenggat waktu. Informasi lebih lengkap tersedia di laman resmi akademik kampus.'
  },
  {
    'title': 'Seleksi Pemilihan Mahasiswa Olimpiade...',
    'date': '28 Mei 2025',
    'image': 'lib/assets/images/purbaya.jpg',
    'content': 'Seleksi Olimpiade Mahasiswa Nasional (OMN) akan segera dilaksanakan untuk mahasiswa yang memiliki minat dan bakat di bidang akademik maupun non-akademik. Peserta yang mendaftar akan melalui serangkaian tahap seleksi, termasuk tes tertulis, presentasi, dan wawancara. Bagi yang lolos seleksi awal, akan diberikan pelatihan intensif oleh mentor berpengalaman untuk mempersiapkan kompetisi tingkat nasional. Partisipasi dalam OMN bukan hanya untuk meraih prestasi pribadi, tetapi juga membawa nama baik kampus di kancah nasional. Jadwal pendaftaran dan pelaksanaan seleksi dapat diakses melalui website resmi kampus. Pastikan untuk mempersiapkan diri sebaik mungkin dan jangan lewatkan kesempatan emas ini untuk menunjukkan kemampuan terbaik Anda.'
  },
  {
    'title': 'Pemberitahuan Pendaftaran Lembaga P...',
    'date': '28 Mei 2025',
    'image': 'lib/assets/images/purbaya.jpg',
    'content': 'Lembaga kemahasiswaan kampus kembali membuka pendaftaran bagi mahasiswa aktif yang ingin bergabung. Bergabung dengan lembaga ini memberikan kesempatan untuk mengembangkan soft skill, memperluas jaringan, dan berkontribusi pada berbagai kegiatan kampus. Pendaftaran terbuka untuk berbagai bidang, seperti keorganisasian, seni, olahraga, dan lainnya. Proses pendaftaran mencakup pengisian formulir, wawancara, dan tahap orientasi. Semua proses dilakukan untuk memastikan calon anggota memiliki komitmen dan semangat tinggi untuk berkontribusi. Mahasiswa yang tertarik dapat mendaftarkan diri melalui sistem online atau langsung ke sekretariat lembaga kemahasiswaan. Jangan lewatkan kesempatan untuk menjadi bagian dari komunitas yang aktif, inovatif, dan berdampak positif pada lingkungan kampus.'
  },
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Berita',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchField(),
              const SizedBox(height: 20),
              BeritaTerbaru(beritaTerbaru: beritaTerbaru),
              const SizedBox(height: 20),
              const Text(
                'Berita Lainnya',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              BeritaLainnya(beritaLainnya: beritaLainnya),
            ],
          ),
        ),
      ),
    );
  }
}