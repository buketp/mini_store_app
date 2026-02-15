# 🛍️ Mini Store App - Flutter Katalog Uygulaması


Bu proje, temel Flutter widget yapılarını, sayfa navigasyonunu ve dinamik veri yönetimini öğrenmek amacıyla geliştirilmiş bir Mini Katalog Uygulamasıdır. Uygulama, gerçekçi bir e-ticaret deneyimi sunmak için JSON tabanlı bir veri simülasyonu kullanmaktadır.


## 🎯 Projenin Amacı


Bu proje ile amaçlanan:

Flutter widget ağacını etkin şekilde kullanmak

Sayfalar arası veri iletimi ve navigator yapısını anlamak

JSON dosyasından veri çekerek listeleme ekranı oluşturmak

Basit bir state management (lifting state up) mantığı ile Favoriler & Sepet yönetimi yapmak

Temiz kod prensipleriyle proje klasör yapısını oluşturmak

## ✨ Uygulama Özellikleri

Dinamik Katalog: ListView.builder ve GridView.builder ile performanslı ürün listeleme.


Merkezi State Yönetimi: Favori ve Sepet sisteminin "Lifting State Up" yaklaşımıyla merkezi olarak yönetilmesi.


Ürün Detay Sayfası: Dinamik içerik ve interaktif sepete ekleme/favori butonları.


Modüler Mimari: Temiz kod prensiplerine uygun klasörleme yapısı.


Görsel Yönetimi: Image.network ile ağ üzerinden çekilen görsellerin hata kontrolü ile yönetimi.



## 📁 Proje Yapısı
Proje, temiz kod (Clean Code) prensiplerine uygun olarak şu klasörleme yapısıyla geliştirilmiştir:

lib/
 ├── components/      : Tekrar kullanılabilir widget'lar (ProductCard vb.).
 ├── data/            : Yerel JSON veri kaynağı.
 ├── models/          : Veri modelleri.
 ├── services/        : Veri çekme işlemleri (JSON Service).
 ├── views/           : Uygulama ekranları (Home, Cart, Favorites, Profile, Detail).
 └── main.dart        : Uygulama giriş noktası

## 🛠️ Kullanılan Teknolojiler

Framework: Flutter SDK 


Language: Dart SDK 


UI Library: Material Design 


IDE: Visual Studio Code 


## 🚀 Nasıl Çalıştırılır?

Bu depoyu klonlayın.

Terminale flutter pub get yazarak bağımlılıkları yükleyin.

Bir emulator veya fiziksel cihaz bağlayın.

flutter run komutuyla uygulamayı başlatın.


## 📸 Ekran Görüntüleri
<img width="350" alt="Ekran görüntüsü 2026-02-15 225255" src="https://github.com/user-attachments/assets/5a9f03ed-bb39-4781-b405-12bf35a3243f" />
<img width="350" alt="Ekran görüntüsü 2026-02-15 225310" src="https://github.com/user-attachments/assets/341d7759-b1da-45df-ae2a-eafd8d5a83e5" />
<img width="350" alt="Ekran görüntüsü 2026-02-15 225338" src="https://github.com/user-attachments/assets/803dea40-fb67-45b3-bf7f-897f94c42dbe" />
<img width="350" alt="Ekran görüntüsü 2026-02-15 225345" src="https://github.com/user-attachments/assets/36af4ff3-9b58-44d4-bd73-03830465bd79" />
<img width="350" alt="Ekran görüntüsü 2026-02-15 225352" src="https://github.com/user-attachments/assets/f4f9ecfa-969c-4097-8833-b235e1197162" />


## 👩🏻‍💻
Bu proje, Flutter öğrenme sürecini hızlandırmak ve temel uygulama mimarisini kavratmak için geliştirilmiştir.
Geliştirici: Buket POLAT
