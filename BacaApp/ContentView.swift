//
//  ContentView.swift
//  BacaApp
//
//  Created by Ricky Austin on 06/10/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var heartToggle = false
    
    @State private var rating: Int?
    
    var body: some View {
        NavigationView{
            
            
            VStack(alignment : .leading){
                Image("kamar").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width:UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.3).clipped()
                
                HStack{
                    
                    Text("Horizon Nusa Dua").font(.title).padding(.trailing, 10).padding(.top, -3)
                    
                    
                    Spacer()
                    Group{
                        Button(action:{
                            heartToggle.toggle()
                        }){
                            
                            Image(systemName: heartToggle ? "heart.fill" : "heart").resizable().frame(width: 20, height : 20).foregroundColor(.red).padding()
                        }.buttonStyle(MyButtonStyle())
                        
                        Button(action:{}){
                            Image(systemName: "square.and.arrow.up").resizable().frame(width: 20, height : 25).padding()
                        }.buttonStyle(MyButtonStyle())
                    }.padding(.top,-50)
                    
                }.padding(.horizontal)
                
                Group{
                    HStack{
                        
                        
                        Image(systemName: "star.fill").resizable().frame(width : 20, height: 20).foregroundColor(.orange)
                        Text ("4,5/5").foregroundColor(.orange)
                        
                        Spacer()
                        
                        Text("Rp. 500.000 / malam").font(.title3).foregroundColor(.gray)
                    }.padding(.bottom)
                    
                    
                    Text("Keterangan").font(.headline).foregroundColor(.gray).padding(.bottom, 3)
                    Text("Hotel Horison Nusa Dua yang terletak di jalan By Pass Ngurah Rai no.1001X, Nusa Dua ini memiliki kombinasi sempurna dari layanan yang ramah, profesional, dan menawarkan fasilitas lengkap dan modern dengan standar internasional. Fasilitas yang ditawarkan oleh hotel kontemporer dan indah ini antara lain, kolam renang, pusat kebugaran, Wi-Fi, mini bar, perlengkapan mandi lengkap, layanan antar jemput ke Bandara Internasional.").multilineTextAlignment(.leading)
                    
                }.padding(.horizontal)
                
                
                Spacer()
            }.edgesIgnoringSafeArea(.top)
            
        }
        
    }
    
    
    
}

struct MyButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .background(Color.white)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .shadow(radius: 5, x: 0.0, y: configuration.isPressed ? 4.0 : 6.0)
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
