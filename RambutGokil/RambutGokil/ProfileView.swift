//
//  ProfileView.swift
//  RambutGokil
//
//  Created by aldybuana on 21/08/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            Image("Profile")
                .resizable()
                .frame(width: 200, height: 200)
                .frame(maxWidth: .infinity)
                .padding(.bottom, 20.0)
            Text("Created by :")
                .font(.custom("Poppins-Regular", size: 15.0))
                .frame(maxWidth: .infinity)
                .padding(.bottom, 20.0)
            Text("Afrialdy Asyura Buana")
                .font(.custom("Poppins-Bold", size: 15.0))
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.center)
                .padding(.bottom, 20.0)
            VStack (alignment: .center ,spacing: 0.0){
                HStack (alignment: .center ,spacing: 0.0){
                    Image("Instagram")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.trailing, 10.0)
                    Text("aldybuanaa")
                }
                .padding(.bottom, 10.0)
                .padding(.leading, 120.0)
            }
            VStack (alignment: .center ,spacing: 0.0){
                HStack (alignment: .center ,spacing: 0.0){
                    Image("Github")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.trailing, 10.0)
                    Text("aldybuanaa")
                }
                .padding(.bottom, 10.0)
                .padding(.leading, 120.0)
            }
            VStack (alignment: .center ,spacing: 0.0){
                HStack (alignment: .center ,spacing: 0.0){
                    Image("Linkedin")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.trailing, 10.0)
                    Text("Afrialdy Asyura Buana")
                }
                .padding(.leading, 120.0)
            }
            Spacer()
            Text("Surakarta\n2022")
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
            }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
