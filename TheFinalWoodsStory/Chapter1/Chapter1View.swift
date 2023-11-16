//
//  Chapter1View.swift
//  TheFinalWoodsStory
//
//  Created by Kasia Rivers on 11/16/23.
//

import SwiftUI

struct Chapter1View: View {
    @State var charName = ""
    @State var charAge: Int = 12
    @State var charColor = Color.black
    
    @State var showingView: Bool = false
    @State var showingAlert: Bool = false
    
    
    var body: some View {
        NavigationStack {
            Form {
                Text("There's a girl in the woods.")
                    .frame(maxWidth: .infinity, alignment: .center)
                Section{
                    HStack {
                        Text("Name this girl:")
                        TextField("Enter a name", text: $charName).textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    .padding(.vertical)
                    
                    Picker("How old is she?", selection: $charAge) {
                        ForEach(1...100, id: \.self) { charAge in
                            Text("\(charAge)")
                        }
                    }
                }
                
                Section {
                    Text("What...color is she?")
                    Image(systemName: "figure")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(charColor)
                    ColorPicker("Pick a color :)", selection: $charColor, supportsOpacity: false)
                }
                
                Section {
                    VStack {
                        Button("Confirm your info!") {
                            showingAlert = true
                        }
                        .alert(isPresented:$showingAlert) {
                            Alert(
                                title: Text("Are you happy with your choices?"),
                                message: Text("There might be an undo"),
                                primaryButton: .destructive(Text("Yes")) {
                                    showingView = true
                                },
                                secondaryButton: .cancel(Text("No"))
                            )
                        }
                    }
                }
                Section {
                    if showingView {
                        NavigationLink {
                            NavView(charName: charName)
                        } label: {
                            Label("Start", systemImage: "play.circle")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Chapter1View()
}
