# MCP Student Sandbox

## Proje Açıklaması
Bu proje, çeşitli Python modüllerini içeren bir öğrenci çalışma alanıdır. Proje, matematiksel hesaplamalar, veri işleme ve hata ayıklama gibi farklı becerileri geliştirmek için tasarlanmıştır. Her bir dosya, belirli bir işlevselliği yerine getiren bağımsız bir modül içerir.

## Dosya Yapısı

- **failing_calculator.py**: Hatalı bir hesaplama modülü. Bu dosya, sıfıra bölme gibi yaygın hataları ele almak için düzenlenmiştir.
- **mystery_module.py**: İkinci dereceden denklemlerin köklerini hesaplayan bir modül. `fn_x` fonksiyonu, verilen katsayılar için kökleri döndürür veya kök yoksa `None` döndürür.
- **secret_leak.py**: Güvenlik açığı içeren bir dosya. AWS Secret Key gibi hassas bilgilerin kodda açıkça tanımlanması, güvenlik riski oluşturur.
- **spaghetti_logic.py**: Karmaşık ve düzensiz bir mantık içeren kod örneği. Bu dosya, temiz kod prensiplerine uygun olarak yeniden düzenlenmiştir.

## mystery_module.py Analizi
`mystery_module.py` dosyasında, ikinci dereceden bir denklemin köklerini hesaplayan bir fonksiyon bulunmaktadır:

```python
import math

def fn_x(a, b, c):
    d = b**2 - 4*a*c
    if d < 0: return None
    return ((-b + math.sqrt(d))/(2*a), (-b - math.sqrt(d))/(2*a))
```

### Açıklama:
- **Fonksiyon Adı**: `fn_x`
- **Girdi Parametreleri**:
  - `a`: İkinci dereceden terimin katsayısı.
  - `b`: Birinci dereceden terimin katsayısı.
  - `c`: Sabit terim.
- **Çıktı**:
  - Diskriminant (`d`) negatifse, `None` döndürülür.
  - Aksi takdirde, denklemin iki kökü bir tuple olarak döndürülür.

### Öneriler:
- Diskriminantın negatif olduğu durumlarda kullanıcıya bilgi veren bir mesaj eklenebilir.
- Fonksiyon adı daha açıklayıcı bir şekilde değiştirilebilir, örneğin `quadratic_roots` gibi.

## Kurulum ve Kullanım
1. Projeyi klonlayın:
   ```bash
   git clone <repository-url>
   ```
2. Gerekli bağımlılıkları yükleyin (eğer varsa):
   ```bash
   pip install -r requirements.txt
   ```
3. Modülleri çalıştırmak için Python 3.8 veya daha üstü bir sürüm kullanın.

## Katkıda Bulunma
1. Bu projeye katkıda bulunmak için bir fork oluşturun.
2. Yeni bir özellik ekleyin veya bir hatayı düzeltin.
3. Değişikliklerinizi bir pull request olarak gönderin.

## Lisans
Bu proje MIT Lisansı ile lisanslanmıştır. Daha fazla bilgi için `LICENSE` dosyasına bakabilirsiniz.