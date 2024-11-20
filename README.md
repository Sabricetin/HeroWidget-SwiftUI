# **HeroWidget App**

HeroWidget, kullanıcılara sevilen süper kahramanların bilgilerini sunan bir iOS uygulamasıdır. Uygulama, kahramanların görsellerini ve detaylarını içeren zengin bir kullanıcı deneyimi sunar.

---

### **Özellikler**
- Sevilen süper kahramanların görsellerini ve isimlerini görüntüleme
- Kahramanların gerçek adlarını öğrenme
- Kullanıcı dostu ve modern bir arayüz
- Swift ve WidgetKit ile zenginleştirilmiş tasarım

---

### **Kullanılan Teknolojiler**
- **Swift**: Performanslı ve modern iOS uygulama geliştirme
- **WidgetKit**: Ana ekran widget'ları oluşturma
- **Codable**: JSON verilerini kolayca işleme

---

### **Kullanılan Mimari**
HeroWidget App, **MVVM (Model-View-ViewModel)** mimari desenini kullanarak geliştirilmiştir. Bu mimari, iş mantığını ve veri yönetimini kullanıcı arayüzünden ayırarak uygulamanın daha modüler, test edilebilir ve sürdürülebilir olmasını sağlar.

- **Model**: Uygulamanın verilerini ve iş mantığını temsil eder. Kahraman bilgilerini işler ve dış hizmetlerle iletişim kurar.
- **View**: Uygulamanın kullanıcı arayüzünü temsil eder, verileri gösterir ve kullanıcı etkileşimlerini yönetir.
- **ViewModel**: Model ile View arasında aracı rolü oynar. Model'den gelen verileri işler ve View'e gösterilmesi için hazırlar, ayrıca kullanıcı girdilerini işler ve Model'i günceller.

---

### **Örnek Veri**
Uygulama, aşağıdaki gibi kahraman verilerini içerir:

```swift
let batman = Superhero(image: "batman", name: "Batman", realName: "Christian Bale")
let hulk = Superhero(image: "hulk1", name: "Hulk", realName: "Mark Ruffalo")
let ironman = Superhero(image: "ironman", name: "IronMan", realName: "Robert Downey")
let spiderman = Superhero(image: "spiderman", name: "Spiderman", realName: "Tom Holland")
```

---

### **Hata Yönetimi**

Uygulama, veri işleme sırasında oluşabilecek hatalar için aşağıdaki yaklaşımı kullanır:

```swift
do {
    let data = try JSONDecoder().decode([Superhero].self, from: responseData)
    self.superheroes = data
} catch {
    print("Veri işlenirken hata oluştu: \(error.localizedDescription)")
}
```

Bu fonksiyon, veri işleme sırasında oluşabilecek hataları yakalar ve kullanıcıya anlamlı bir hata mesajı olarak gösterir.

---

### **Kurulum**
Bu projeyi kurmak için aşağıdaki adımları izleyin:

1. Bu depoyu klonlayın:
   ```bash
   git clone https://github.com/yourusername/HeroWidget.git
   ```
2. Proje dizinine gidin:
   ```bash
   cd HeroWidget
   ```
3. Projeyi Xcode ile açın:
   ```bash
   open HeroWidget.xcodeproj
   ```
4. Projeyi çalıştırın.

---
