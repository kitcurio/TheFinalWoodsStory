//
//  Chapter3View.swift
//  TheFinalWoodsStory
//
//  Created by Kasia Rivers on 11/16/23.
//

import SwiftUI

struct Chapter3View: View {
    var body: some View {
        NavigationStack {
            List {
                
                Image("Potion Stand")
                    .resizable()
                    .scaledToFit()
                
                Text("She is forced to be brave enough to take the 2day dangerous path, which contains the most potent herbs. These herbs can be used as medicine to heal her mother. Initially nothing about this path seemed threatening. She felt at ease, immersed in the beauty of the lush forest. About an hour in, her perception started to change. The behavior of the creatures and plants got a bit alarming. There was a Wise Old Owl with a potion stand, so she stopped to inquire if the Owl knew about the wizard. His assistant The Green Baboon demanded her to pick a potion.")
                
                Section("Potion Choices") {
                    NavigationLink {
                        Mystical()
                    }
                label: {
                    Label("Mystical Orange Electricity", systemImage: "bolt.batteryblock")
                }
                    
                    NavigationLink {
                        Magical()
                    } label: {
                        Label("Magical Green Cure", systemImage: "wand.and.stars")
                    }
                    
                    NavigationLink {
                        Random()
                    } label: {
                        Label("Pink&Orange Toxic Concoction", systemImage: "cloud.bolt")
                    }
                }
            }
            .navigationTitle("Chapter 3 🧪")
        }
       
    }
}

#Preview {
    Chapter3View()
}
