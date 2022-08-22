//
//  DetailView.swift
//  RambutGokil
//
//  Created by aldybuana on 17/08/22.
//

import SwiftUI

struct DetailView: View {
    var hairstyle: ListItem
    var body: some View {
        
        ZStack {
            Color.yellow.ignoresSafeArea()
            VStack(alignment: .leading, spacing: 0.0) {
        
                Text(hairstyle.title)
                    .font(.custom("Poppins-Bold", size: 25))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.bottom, 10.0)
                    
                
                Image(hairstyle.image)
                    .resizable()
                    .frame(width: 300, height: 300)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.bottom, 30.0)
                    
                ScrollView{
                    Text(hairstyle.description)
                        .font(.custom("Poppins-Regular", size: 15))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 50.0)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                
                Spacer()
                    
            }
        }
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(hairstyle: hairstyle[0])
    }
}
