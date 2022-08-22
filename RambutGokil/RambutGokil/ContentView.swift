//
//  ContentView.swift
//  RambutGokil
//
//  Created by aldybuana on 17/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(hairstyle) { hairstyle in
                NavigationLink(destination: DetailView(hairstyle: hairstyle.self)) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("\(hairstyle.title)")
                                .font(.custom("Poppins-Bold", size: 16))
                                .padding(.bottom, 2)
                            Text("\(hairstyle.subtitle)")
                                .font(.custom("Poppins-Regular", size: 14))
                            
                        }
                        Spacer()
                        
                        Image(hairstyle.image)
                            .resizable()
                            .frame(width: 100, height: 100)
                    }
                }
                .listRowBackground(Color.yellow)
            }
            .navigationTitle("Gaya Rambut")
            .toolbar{
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing){
                    Button(action: {}, label: {
                        NavigationLink(destination: ProfileView()){
                            Label("Profile",systemImage: "person.circle.fill")
                                .foregroundColor(Color.black)
                        }
                    })
                }
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListItem: Identifiable{
    var id = UUID()
    var title: String
    var subtitle: String
    var description: String
    var image: String
}

var hairstyle = [
    ListItem(
        title: "Bleached Textured Crop",
        subtitle: "#Peringkat 1",
        description: "Tahun 2022 bakal dipenuhi sama gaya rambut eksperimental, salah satunya adalah crop cut, seperti French crop atau Caesar cut. Untuk membuatnya potong rambut model sekarang ini makin unik, kamu bisa mencoba gaya rambut pria keren berikut dengan adalah mewarnai rambut menjadi bleach blonde seperti ini!",
        image: "BleachedTexturedCrop"),
    ListItem(
        title: "Caesar Cut",
        subtitle: "#Peringkat 2",
        description: "Salah satu nama potongan rambut pria yang populer tahun ini adalah Caesar cut. Untuk mendeskripsikan potongan cepak ini, bayangkan saja mangkuk. Yes, salah satu model rambut jaman sekarang ini benar-benar memangkas sisi bagian samping ke bawah dan hanya menyisakan rambut bagian atas.",
        image: "CaesarCut"),
    ListItem(
        title: "Edgar Cut",
        subtitle: "#Peringkat 3",
        description: "Edgar cut juga dikenal dengan potongan rambut jigrak pria yang disebut takuache asal Meksiko. Sehingga sangat populer di kalangan pria muda Latin. Ciri khas potongan rambut ini hampir mirip dengan French Crop, bagian samping yang sangat tipis serta bagian atas rambut yang dibiarkan tebal dengan sentuhan poni depan pendek di atas alis.",
        image: "EdgarCut"),
    ListItem(
        title: "French Crop",
        subtitle: "#Peringkat 4",
        description: "French crop adalah gaya potong rambut model sekarang yang memiliki ciri khas guntingan pendek di bagian belakang dan kedua sisi, tapi sisi depannya dibiarkan lebih panjang sehingga menutupi sebagian atau sampai tengah kening.",
        image: "FrenchCrop"),
    ListItem(
        title: "Fringe Crop",
        subtitle: "#Peringkat 5",
        description: "Gaya rambut pria ini mirip dengan French crop yang cenderung tegas. Namun fokusnya terdapat di bagian poni (fringe) yang dipotong rata tanpa tambahan layer. Kedua sisi rambut dipapas habis dengan model fade.",
        image: "FringeCrop"),
    ListItem(
        title: "Messy French Crop",
        subtitle: "#Peringkat 6",
        description: "Tak suka rambut yang terlalu rapi? Atau mungkin rambut aslimu agak bergelombang? Kamu bisa banget mencoba messy French crop! Buat layer pada bagian poni rambut dalam panjang yang bervariasi. Tujuannya, agar saat ditata rambut akan terlihat messy secara alami.",
        image: "MessyFrenchCrop"),
    ListItem(
        title: "Messy Textured Crop",
        subtitle: "#Peringkat 7",
        description: "Kalau rambutmu lurus tapi ingin tampilan yang messy tapi tetap keren, coba deh tambahkan efek wavy sedikit pada gaya rambut pria panjang. Tujuannya untuk menciptakan tekstur agar bentuknya lebih ideal.",
        image: "MessyTexturedCrop"),
    ListItem(
        title: "Pompadour",
        subtitle: "#Peringkat 8",
        description: "Layaknya undercut, pompadour juga tergolong model rambut ikonik dan timeless. Model rambut ini cocok untuk pria berambut tebal dan senang bereksperimen dengan pomade.\nCiri khasnya ada pada seluruh bagian atas rambut yang bervolume. Untuk menatanya, bentuk volume dulu pada rambut bagian atas, lalu sisir ke belakang. Gampang!",
        image: "Pompadour"),
    ListItem(
        title: "Textured Crop",
        subtitle: "#Peringkat 9",
        description: "Gaya rambut pria pendek ini mirip dengan crop cut dengan tambahan layer pada bagian atas rambut. Cara menata gaya potong rambut pria ini mudah, cukup pakai gel rambut atau hairspray supaya lebih berbentuk dan tidak mudah ‘kempes’.",
        image: "TexturedCrop"),
    ListItem(
        title: "Undercut",
        subtitle: "#Peringkat 10",
        description: "Potongan rambut pria undercut adalah cukuran rambut pria yang khas dengan bagian samping dan belakang yang tipis, sedangkan bagian atasnya disisakan tebal. Hasil cutting ini akan bikin penampilan terlihat clean dan rapi.",
        image: "Undercut"),
]
