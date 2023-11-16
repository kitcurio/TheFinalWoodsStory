//
//  Chapter4View.swift
//  TheFinalWoodsStory
//
//  Created by Kasia Rivers on 11/16/23.
//

import SwiftUI

struct Chapter4View: View {
    @State private var saveMom: Bool?

    var body: some View {
        VStack {
            Spacer()
                .frame(height:1)
                .frame(width: 80)

            Text("""
                They approach the chipmunk with the potion stand.

                Chipmunk: Hello, traveler! What brings you to this dangerous path?
                They: I'm looking for the wizard who knows about the potent herbs.
                Chipmunk: Ah, the wizard! You'll find the wizard's hut deep in the heart of the forest.
                They thank the chipmunk and continue their journey. They decide to continue on the path, hoping to find the wizard's hut. They have found the wizard's hut and obtained the potion.
                """)
                .padding()

            VStack {
                
                Image("Sign3")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 225)
                    .padding()

                HStack {
                    Button(action: {
                        self.saveMom = true
                    }) {
                        Text("Yes")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.green)
                            .cornerRadius(10)
                    }

                    Button(action: {
                        self.saveMom = false
                    }) {
                        Text("No")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.red)
                            .cornerRadius(10)
                    }
                }

                if let saveMom = saveMom {
                    Text(" \(saveMom ? "What a Hero!" : "Continue your journey")")
                        .padding()
                }
            }

           
        }
    }
}

struct Chapter4View_Previews: PreviewProvider {
    static var previews: some View {
        Chapter4View()
    }
}
