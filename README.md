#📱 Mini Store App - Flutter Katalog Uygulaması ##

Bu proje, temel Flutter widget yapılarını, sayfa navigasyonunu ve dinamik veri yönetimini öğrenmek amacıyla geliştirilmiş bir Mini Katalog Uygulamasıdır. Uygulama, gerçekçi bir e-ticaret deneyimi sunmak için JSON tabanlı bir veri simülasyonu kullanmaktadır.

##🎯 Projenin Amacı

Flutter SDK ve Dart programlama dili kullanılarak; widget ağacı mantığını kavramak, sayfalar arası veri taşımak ve basit bir state yönetimi simülasyonu (favoriler ve sepet) gerçekleştirmektir.

##✨ Öne Çıkan Özellikler

Dinamik Ürün Listeleme: GridView.builder kullanılarak JSON dosyasından çekilen verilerin performanslı bir şekilde sergilenmesi.


Gelişmiş Navigasyon: Sayfalar arası geçişlerde Navigator.push/pop ve Route Arguments ile veri iletimi.


State Management (Lifting State Up): Favori ve Sepet verilerinin MainScreen üzerinden merkezi olarak yönetilmesi.


Detaylı Ürün Sayfası: Ürün görselleri, açıklamaları ve interaktif sepet/favori butonları.


Kullanıcı Profili: Basit bir giriş/çıkış (Auth) simülasyonu.

##📁 Proje Yapısı
Proje, temiz kod (Clean Code) prensiplerine uygun olarak şu klasörleme yapısıyla geliştirilmiştir:


lib/models: Veri modelleri (Product class).

lib/views: Uygulama ekranları (Home, Cart, Favorites, Profile, Detail).

lib/services: Veri çekme işlemleri (JSON Service).

lib/components: Tekrar kullanılabilir widget'lar (ProductCard vb.).

lib/data: Yerel JSON veri kaynağı.

##🛠️ Kullanılan Teknolojiler

Framework: Flutter SDK 


Language: Dart SDK 


UI Library: Material Design 


IDE: Visual Studio Code 


##🚀 Nasıl Çalıştırılır?

Bu depoyu klonlayın.

Terminale flutter pub get yazarak bağımlılıkları yükleyin.

Bir emulator veya fiziksel cihaz bağlayın.

flutter run komutuyla uygulamayı başlatın.


##📸 Ekran Görüntüleri
<img width="565" height="1213" alt="Ekran görüntüsü 2026-02-15 225352" src="https://github.com/user-attachments/assets/f4f9ecfa-969c-4097-8833-b235e1197162" />
<img width="573" height="1202" alt="Ekran görüntüsü 2026-02-15 225345" src="https://github.com/user-attachments/assets/36af4ff3-9b58-44d4-bd73-03830465bd79" />
<img width="563" height="1204" alt="Ekran görüntüsü 2026-02-15 225338" src="https://github.com/user-attachments/assets/803dea40-fb67-45b3-bf7f-897f94c42dbe" />
<img width="571" height="1210" alt="Ekran görüntüsü 2026-02-15 225310" src="https://github.com/user-attachments/assets/341d7759-b1da-45df-ae2a-eafd8d5a83e5" />
<img width="573" height="1210" alt="Ekran görüntüsü 2026-02-15 225255" src="https://github.com/user-attachments/assets/5a9f03ed-bb39-4781-b405-12bf35a3243f" />

