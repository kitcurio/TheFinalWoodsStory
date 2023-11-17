//
//  Chapter1View.swift
//  TheFinalWoodsStory
//
//  Created by Kasia Rivers on 11/16/23.
//

import SwiftUI

struct Chapter1View: View {
    @State var character = Person(name: "", age: 13, color: Color.black, word: "")
    @State var charColor = Color.black
    
    @State var showingView: Bool = false
    @State var showingAlert: Bool = false
    
// default shit:
    @State var initialValues = Person(name: "", age: 13, color: Color.black, word: "")
    
    var body: some View {
        NavigationStack {
            Form {
                Text("There's a girl in the woods.")
                    .frame(maxWidth: .infinity, alignment: .center)
                Section{
                    HStack {
                        Text("Name this girl:")
                        TextField("Enter a name", text: $character.name).textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    .padding(.vertical)
                    
                    Picker("How old is she?", selection: $character.age) {
                        ForEach(1...100, id: \.self) { charAge in
                            Text("\(charAge)")
                        }
                    }
                }
                
                Section {
                    VStack {
                        Text("What's uhh...your favorite word?")
                            .padding(.bottom)
                        TextField("Enter a word", text: $character.word).textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    .padding(.vertical)
                }
                
                Section {
                    Text("What...color is she?")
                    Image(systemName: "figure")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(character.color)
                    ColorPicker("Pick a color :)", selection: $character.color, supportsOpacity: false)
                }
                
                Section {
                    VStack {
                        Button("Confirm your info!") {
                            showingAlert = true
                        }
                        .alert(isPresented:$showingAlert) {
                            Alert(
                                title: Text("Are you happy with your choices?"),
                                message: Text("I hope so..."),
                                primaryButton: .destructive(Text("Yes")) {
                                    showingView = true
                                },
                                secondaryButton: .cancel(Text("No")) {
                                    showingView = false
                                }
                                
                            )
                        }
                    }
                }
                Section {
                    if showingView {
                        NavigationLink {
                            NavView(character: $character)
                        } label: {
                            Label("Start", systemImage: "play.circle")
                        }
                    }
                }
            }
        }
    }
}

//#Preview {
//    Chapter1View(character: )
//}
struct Chapter1View_Preview: PreviewProvider {
    static var previews: some View {
    @State var initialValues = Person(name: "", age: 13, color: Color.black, word: "")
        return Chapter1View(character: initialValues)
    }
}
