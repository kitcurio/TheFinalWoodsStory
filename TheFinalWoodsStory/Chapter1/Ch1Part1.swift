//
//  Ch1Part1.swift
//  TheFinalWoodsStory
//
//  Created by Kasia Rivers on 11/16/23.
//

import SwiftUI

struct Ch1Part1: View {
    @Binding var character: Person
  
    var body: some View {
    
        NavigationStack {
            List {
                HStack {
                    Image(systemName: "tree")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color.forest)
                    
                    Image(systemName: "tree.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color.forest)
                    
                    Image(systemName: "tree")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color.forest)
                }
                .padding()
                
                
                Text("Once upon a time, there was a girl named \(character.name). \(character.name) lived deep in the \(character.word) woods. She’d lived there alone in a cabin with her mom her whole life, and until recently, she’d known these woods like the back of her hand. The blank woods had always been beautiful to her, teeming with life and comforting in their familiarity. But a few months ago, things in her little patch of the woods had started to change. At first she just thought the air felt different. Like it always felt like it was colder outside than it should have been, and maybe like it smelled funny, but she didn't think much of it. But then the animals started acting weird…it was like they could sense some invisible border around \(character.name)’s house, and they wouldn’t cross it. It was like they were afraid.")
                    .padding()
                
                Image(systemName: "camera.macro")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity, alignment: .center)
                    .foregroundColor(character.color)
                
                Text("One day, the day \(character.name) turned  \(character.age + 1) years old, \(character.name) was walking with her mother in the  garden they kept behind their cabin, when she noticed a strange flower. It had a long, spiraling stem, and petals that almost looked like they could be sharp. It was shimmery and iridescent. And it looked magical, like it shouldn’t exist.")
                    .padding()
            }
        }
        .navigationTitle("Home In The Woods")
    }
}

//#Preview {
//    Ch1Part1()
//}
struct Ch1Part1View_Preview: PreviewProvider {
    static var previews: some View {
    @State var initialValues = Person(name: "Jane", age: 13, color: Color.black, word: "Magic")
        return Ch1Part1(character: $initialValues)
    }
}
