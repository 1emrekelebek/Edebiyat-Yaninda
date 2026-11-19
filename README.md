# Edebiyat Yanı Başında

Sakarya'nın yazarlar, şairler ve edebî eserlerde nasıl anlatıldığını mekânlar üzerinden keşfetmeye yönelik dijital edebiyat atlası. TÜBİTAK 2204-A araştırma projesinin ilk web arayüzüdür.

## İlk sürümde neler var?

- Beyaz ağırlıklı, mobil uyumlu editoryal tasarım
- MapLibre GL JS ve OpenFreeMap ile etkileşimli Sakarya haritası
- Sakarya Nehri ve Necip Fazıl Kısakürek'in **Sakarya Türküsü** bağlantısı
- Sait Faik Abasıyanık ve Necip Fazıl için kaynak bağlantılı yazar profilleri
- Kullanıcının isteğiyle çalışan, yalnızca sayfa açıkken konum gösterimi
- Kaynakça ve araştırma yöntemi bölümleri

## Çalıştırma

Proje ilk aşamada statik bir web sitesidir. `index.html` dosyasını bir yerel web sunucusuyla veya GitHub Pages üzerinden yayımlayabilirsiniz. Harita ve yazı tipleri için internet bağlantısı gerekir.

GitHub Pages henüz etkin değilse:

1. Depoda **Settings → Pages** bölümünü açın.
2. **Deploy from a branch** seçeneğini belirleyin.
3. Branch olarak `main`, klasör olarak `/(root)` seçin ve kaydedin.

## Araştırma ve doğruluk notları

- Haritadaki Sakarya Nehri noktası temsili bir referanstır; şiirin yazıldığı kesin konum değildir.
- Sait Faik'in Adapazarı bağlantısı biyografik olarak kaynaklandırılmıştır. Belirli bir hikâye sahnesi doğrulanmadan haritada ona özel bir edebî mekân atanmaz.
- Portre ve tarihî fotoğraflar, kullanım hakları ve kaynak künyeleri doğrulandıktan sonra eklenecektir.
- Şiir ve diğer telifli eserlerin tam metinleri izinsiz yayımlanmaz.

## Sonraki geliştirme aşamaları

1. Yazar, eser, mekân ve görsel kayıtlarını yönetecek güvenli yönetici paneli
2. Supabase veritabanı ve görsel depolama
3. Kaynak, baskı, sayfa ve mekân doğrulama alanları
4. Yakınlık uyarıları ve tarayıcı konum izinleri
5. Saha testleri ve kullanıcı deneyimi değerlendirmesi

## Harita ve kaynaklar

- [OpenFreeMap](https://openfreemap.org/) · [MapLibre GL JS](https://maplibre.org/)
- [Sakarya Valiliği — Sakarya Nehri](https://www.sakarya.gov.tr/sakarya-nehri)
- [Sadi Gedik — Sakarya Türküsü şiirinin metin dil bilimsel görünümü](https://dergipark.org.tr/tr/pub/kusbd/article/501698)
- [Atatürk Ansiklopedisi — Sait Faik Abasıyanık](https://ataturkansiklopedisi.gov.tr/detay/206/Sait-Faik-Abas%C4%B1yan%C4%B1k-%281906-1954%29-)
- [DAHITI — Sakarya Nehri referans noktası](https://dahiti.dgfi.tum.de/en/24006/)
