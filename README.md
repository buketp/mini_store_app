##📱 Mini Store App - Flutter Katalog Uygulaması ##
Bu proje, temel Flutter widget yapılarını, sayfa navigasyonunu ve dinamik veri yönetimini öğrenmek amacıyla geliştirilmiş bir Mini Katalog Uygulamasıdır. Uygulama, gerçekçi bir e-ticaret deneyimi sunmak için JSON tabanlı bir veri simülasyonu kullanmaktadır.
+2

#🎯 Projenin Amacı
Flutter SDK ve Dart programlama dili kullanılarak; widget ağacı mantığını kavramak, sayfalar arası veri taşımak ve basit bir state yönetimi simülasyonu (favoriler ve sepet) gerçekleştirmektir.
+2

#✨ Öne Çıkan Özellikler

Dinamik Ürün Listeleme: GridView.builder kullanılarak JSON dosyasından çekilen verilerin performanslı bir şekilde sergilenmesi.
+1


Gelişmiş Navigasyon: Sayfalar arası geçişlerde Navigator.push/pop ve Route Arguments ile veri iletimi.
+1


State Management (Lifting State Up): Favori ve Sepet verilerinin MainScreen üzerinden merkezi olarak yönetilmesi.
+1


Detaylı Ürün Sayfası: Ürün görselleri, açıklamaları ve interaktif sepet/favori butonları.
+1

Kullanıcı Profili: Basit bir giriş/çıkış (Auth) simülasyonu.

📁 Proje Yapısı
Proje, temiz kod (Clean Code) prensiplerine uygun olarak şu klasörleme yapısıyla geliştirilmiştir:
+1


lib/models: Veri modelleri (Product class).
+1

lib/views: Uygulama ekranları (Home, Cart, Favorites, Profile, Detail).

lib/services: Veri çekme işlemleri (JSON Service).


lib/components: Tekrar kullanılabilir widget'lar (ProductCard vb.).
+1


lib/data: Yerel JSON veri kaynağı.

🛠️ Kullanılan Teknolojiler

Framework: Flutter SDK 


Language: Dart SDK 


UI Library: Material Design 


IDE: Visual Studio Code 

📸 Ekran Görüntüleri
(Buraya Github'a yüklediğin ekran görüntülerinin linklerini ekleyebilirsin)

🚀 Nasıl Çalıştırılır?
Bu depoyu klonlayın.

Terminale flutter pub get yazarak bağımlılıkları yükleyin.

Bir emulator veya fiziksel cihaz bağlayın.

flutter run komutuyla uygulamayı başlatın.
