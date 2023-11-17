//
//  NavView.swift
//  TheFinalWoodsStory
//
//  Created by Kasia Rivers on 11/16/23.
//

import SwiftUI

struct NavView: View {
//    var charName: String = "Jane"
    @Binding var character: Person
    
    @State var initialValues = Person(name: "", age: 13, color: Color.black, word: "")
    
    var body: some View {
        NavigationStack {
            NavigationLink {
                Ch1Part1(character: $character)
            } label: {
                Label("Chapter 1", systemImage: "house.fill")
            }
        }
    }
}

//#Preview {
//    NavView()
//}

struct NavView_Preview: PreviewProvider {
    static var previews: some View {
    @State var initialValues = Person(name: "tree", age: 13, color: Color.black, word: "")
        return NavView(character: $initialValues)
    }
}
