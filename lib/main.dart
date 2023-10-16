import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(
    home: ZodiacApp(),
  ));
}

final audioPlayer = AudioPlayer();

class ZodiacApp extends StatefulWidget {
  @override
  _ZodiacAppState createState() => _ZodiacAppState();
}

class _ZodiacAppState extends State<ZodiacApp> {
  String _nama = '';
  String _tanggalLahir = '';
  String _umur = '';
  String _zodiak = '';
  String _zodiakSimbol = '';
  String _zodiakDeskripsi = '';

  void _hitungUmur() {
    //Hitung umur berdasarkan tanggal lahir (anda dapat menggantu ini dengan logika yang lebih akurat)
    final tanggalLahir = DateTime.parse(_tanggalLahir);
    final sekarang = DateTime.now();
    final umur = sekarang.year - tanggalLahir.year;
    setState(() {
      _umur = umur.toString();
    });
    // Tentukan zodiak berdasarkan tanggal lahir
    // (anda dapat menambahkan logika lebih lanjut sesuai zodiak yang diperlukan)
    final bulan = tanggalLahir.month;
    final tanggal = tanggalLahir.day;

    //bacground music
    void playBackgroundMusic() async {
      int result =
          await audioPlayer.play('assets/background_music.mp3', isLocal: true);

      if (result == 1) {
        // Pemutaran musik berhasil
      } else {
        // Pemutaran musik gagal
      }
    }

    void stopBackgroundMusic() {
      audioPlayer.stop();
    }

    if ((bulan == 3 && tanggal >= 21) || (bulan == 4 && tanggal <= 19)) {
      _zodiak = 'Aries';
      _zodiakSimbol = 'aries logo.png';
      _zodiakDeskripsi =
          'Aries is the first zodiac sign and is known as a leader. They tend to be brave, energetic, and enthusiastic. Aries individuals are often driven by their passion and are not afraid to take risks. They have a strong desire to achieve their goals and can be quite competitive.';
    } else if ((bulan == 4 && tanggal >= 20) || (bulan == 5 && tanggal <= 20)) {
      _zodiak = 'Taurus';
      _zodiakSimbol = 'taurus logo.png';
      _zodiakDeskripsi =
          'Taurus is the second zodiac sign and is known for their stability and patience. They are often seen as practical and loyal individuals. Taurus individuals have a strong work ethic and appreciate the finer things in life. They are reliable and trustworthy.';
    } else if ((bulan == 5 && tanggal >= 21) || (bulan == 6 && tanggal <= 20)) {
      _zodiak = 'Gemini';
      _zodiakSimbol = 'gemini logo.png';
      _zodiakDeskripsi =
          'Gemini is the third zodiac sign and is associated with adaptability and communication. Geminis are known for their curiosity and love of learning. They are social and can easily connect with others. They have a dual nature and can be both serious and playful.';
    } else if ((bulan == 6 && tanggal >= 21) || (bulan == 7 && tanggal <= 22)) {
      _zodiak = 'Cancer';
      _zodiakSimbol = 'cancer logo.jpeg';
      _zodiakDeskripsi =
          'Cancer is the fourth zodiac sign and is characterized by their emotional and nurturing nature. They are known for their strong intuition and sensitivity. Cancer individuals are family-oriented and often take care of others. They are loyal and empathetic.';
    } else if ((bulan == 7 && tanggal >= 23) || (bulan == 8 && tanggal <= 22)) {
      _zodiak = 'Leo';
      _zodiakSimbol = 'leo logo.png';
      _zodiakDeskripsi =
          'Leo is the fifth zodiac sign and is associated with confidence and leadership. Leos are often seen as generous and enthusiastic individuals. They have a strong desire for attention and recognition. Leos are natural leaders and love to be in the spotlight.';
    } else if ((bulan == 8 && tanggal >= 23) || (bulan == 9 && tanggal <= 22)) {
      _zodiak = 'Virgo';
      _zodiakSimbol = 'virgo logo.png';
      _zodiakDeskripsi =
          'Virgo is the sixth zodiac sign and is known for their attention to detail and practicality. They are often seen as perfectionists and hard workers. Virgo individuals are analytical and enjoy helping others. They are reliable and organized.';
    } else if ((bulan == 9 && tanggal >= 23) ||
        (bulan == 10 && tanggal <= 22)) {
      _zodiak = 'Libra';
      _zodiakSimbol = 'libra logo.png';
      _zodiakDeskripsi =
          'Libra is the seventh zodiac sign and is associated with balance and harmony. They are known for their diplomatic and charming nature. Libra individuals seek fairness and justice and often make great mediators. They value beauty and aesthetics.';
    } else if ((bulan == 10 && tanggal >= 23) ||
        (bulan == 11 && tanggal <= 21)) {
      _zodiak = 'Scorpio';
      _zodiakSimbol = 'scorpio logo.png';
      _zodiakDeskripsi =
          'Scorpio is the eighth zodiac sign and is characterized by their intensity and passion. They are known for their strong determination and resourcefulness. Scorpio individuals can be secretive and are often drawn to deep, meaningful relationships.';
    } else if ((bulan == 11 && tanggal >= 22) ||
        (bulan == 12 && tanggal <= 21)) {
      _zodiak = 'Sagitarius';
      _zodiakSimbol = 'sagitarius logo.png';
      _zodiakDeskripsi =
          'Sagittarius is the ninth zodiac sign and is associated with adventure and optimism. They are known for their love of travel and exploration. Sagittarius individuals are often philosophical and open-minded. They value freedom and have a great sense of humor.';
    } else if ((bulan == 12 && tanggal >= 22) ||
        (bulan == 1 && tanggal <= 19)) {
      _zodiak = 'Capricorn';
      _zodiakSimbol = 'capricorn logo.png';
      _zodiakDeskripsi =
          'Capricorn is the tenth zodiac sign and is known for their discipline and ambition. They are often seen as responsible and practical individuals. Capricorns work hard to achieve their goals and are known for their reliability and determination.';
    } else if ((bulan == 1 && tanggal >= 20) || (bulan == 2 && tanggal <= 18)) {
      _zodiak = 'Aquarius';
      _zodiakSimbol = 'aquarius logo.png';
      _zodiakDeskripsi =
          'Aquarius is the eleventh zodiac sign and is associated with innovation and humanitarianism. They are known for their intellectual and independent nature. Aquarius individuals are often progressive and open to new ideas. They value social causes and equality.';
    } else if ((bulan == 2 && tanggal >= 19) || (bulan == 3 && tanggal <= 20)) {
      _zodiak = 'Pisces';
      _zodiakSimbol = 'pisces logo.png';
      _zodiakDeskripsi =
          'Pisces is the twelfth zodiac sign and is characterized by their empathy and creativity. They are known for their intuitive and compassionate nature. Pisces individuals are often artistic and dreamy. They have a deep connection to their emotions and the emotions of others.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ramalan Bintang (Zodiak)'),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/background.jpg'),
          fit: BoxFit.cover,
        )),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Input field untuk Nama
            TextField(
              onChanged: (value) {
                setState(() {
                  _nama = value;
                });
              },
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            // Input field untuk Tanggal Lahir
            TextField(
              onChanged: (value) {
                setState(() {
                  _tanggalLahir = value;
                });
              },
              decoration:
                  InputDecoration(labelText: 'Tanggal Lahir (YYYY-MM-DD)'),
            ),
            ElevatedButton(
              onPressed: () {
                _hitungUmur();
              },
              child: Text('Hitung Umur dan Zodiak'),
            ),
            // Tampilkan salam dengan nama
            Text('Halo $_nama!'),
            // Tampilkan umur
            Text('Umur: $_umur tahun'),
            // Tampilkan zodiak
            Text('Zodiak: $_zodiak'),

            if (_zodiakSimbol.isNotEmpty)
              // Tampilkan gambar simbol zodiak jika zodiak terdeteksi
              Image.asset('assets/$_zodiakSimbol',
                  height: 300,
                  width: 300), // Ganti 'assets/' dengan direktori Anda

            if (_zodiakDeskripsi.isNotEmpty)
              // Tampilkan deskripsi zodiak jika zodiak terdeteksi
              Text(_zodiakDeskripsi),
          ],
        ),
      ),
      ),
    );
  }
}
