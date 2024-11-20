# HeroWidget-SwiftUI

HeroWidget, kullanıcılara sevilen süper kahramanların bilgilerini sunan bir iOS uygulamasıdır. Uygulama, kahramanların görsellerini ve detaylarını içeren zengin bir kullanıcı deneyimi sunar.

Özellikler

	•	Süper kahramanların görselleri ve isimlerini görüntüleme
	•	Kahramanların gerçek adlarını öğrenme
	•	Kullanıcı dostu ve modern bir arayüz
	•	Swift ve WidgetKit ile zenginleşmiş tasarım

Kullanılan Teknolojiler

	•	Swift: Performanslı ve modern iOS uygulama geliştirme
	•	WidgetKit: Ana ekran widget’ları oluşturma
	•	Codable: JSON verilerini kolayca işleme

Kullanılan Mimari

HeroWidget App, MVVM (Model-View-ViewModel) mimari desenini kullanır. Bu mimari desen, uygulamanın daha modüler, test edilebilir ve sürdürülebilir olmasını sağlar.

Model:

Uygulamanın verilerini ve iş mantığını temsil eder. Kahraman bilgilerini ve ilgili verileri işler.

View:

Uygulamanın kullanıcı arayüzünü temsil eder, verileri görüntüler ve kullanıcı etkileşimlerini yönetir.

ViewModel:

Model ile View arasında aracı rolü oynar. Model’den gelen verileri işler ve View’e hazırlar. Ayrıca kullanıcı girdilerini alır ve Model’i günceller.

Örnek Veri

Aşağıda kullanılan örnek kahraman verileri bulunmaktadır:

let batman = Superhero(image: "batman", name: "Batman", realName: "Christian Bale")
let hulk = Superhero(image: "hulk1", name: "Hulk", realName: "Mark Ruffalo")
let ironman = Superhero(image: "ironman", name: "IronMan", realName: "Robert Downey")

Hata Yönetimi

Uygulama, veri işleme sırasında oluşabilecek hataları aşağıdaki gibi yönetir:

do {
    let data = try JSONDecoder().decode([Superhero].self, from: responseData)
    self.superheroes = data
} catch {
    print("Veri işlenirken hata oluştu: \(error.localizedDescription)")
}

Bu yaklaşım, verilerin güvenilir bir şekilde işlenmesini sağlar ve hata durumunda kullanıcıya net bir geri bildirim sunar.

Kurulum

Bu projeyi çalıştırmak için aşağıdaki adımları izleyin:
	1.	Bu depoyu klonlayın:

git clone https://github.com/yourusername/HeroWidget.git


	2.	Proje dizinine gidin:

cd HeroWidget


	3.	Projeyi Xcode ile açın:

open HeroWidget.xcodeproj


	4.	Gerekli bağımlılıkları yükleyin ve projeyi çalıştırın.
