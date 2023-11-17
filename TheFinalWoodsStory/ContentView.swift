//
//  ContentView.swift
//  TheFinalWoodsStory
//
//  Created by Kasia Rivers on 11/16/23.
//

import SwiftUI

// Use the relevant folders and swift files to code your chapter of the story. Keep ContentView as-is, unless you want a different type of navigation in your story.
struct ContentView: View {
//    @State var character = Person(name: "", age: 13)
//    @Binding var character: Person
    
    var body: some View {
        TabView {
            CoverView()
                .tabItem {
                    Label("Cover", systemImage: "book.closed")
                }
            Chapter1View()
                .tabItem {
                    Label("Chapter 1", systemImage: "1.circle")
                }
            Chapter2View()
                .tabItem {
                    Label("Chapter 2", systemImage: "2.circle")
                }
            Chapter3View()
                .tabItem {
                    Label("Chapter 3", systemImage: "3.circle")
                }
            Chapter4View(/*character: $character*/)
                .tabItem {
                    Label("Chapter 4", systemImage: "4.circle")
                }
        }
    }
}

#Preview {
    ContentView()
}
//struct ContentView_Preview: PreviewProvider {
//    static var previews: some View {
//    @State var initialValues = Person(name: "tree", age: 13)
//        return ContentView(character: $initialValues)
//    }
//}
