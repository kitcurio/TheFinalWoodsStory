//
//  Chapter2View.swift
//  ElusiveProblems
//
//  Created by Kasia Rivers on 11/13/23.
//

import SwiftUI

struct Chapter2View: View {
    @State private var character: Character = .Anon
    @State private var characterNar: Character = .Narrator
    @State var toShort = false
    @State var toLong = false
    var body: some View {
        NavigationStack{
            VStack {
                Text("Chapter 2")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
                Text(characterNar.dialoguePriority + "You come to a fork in the road where one path is dangerous and takes 2 days to travel and one is safe but takes 4 days to travel.  It won’t be too long before I reach the apothecary’s adobe if I take the short path.")
                
                Section{
                    Text(character.dialoguePriority + "I wonder which path I should choose....")
                    HStack{
                        NavigationLink(destination: ShortPathView(), isActive: $toShort){
                            
                        }
                        Button("Short Path") {
                            toShort = true
                        }
                        NavigationLink(destination: LongPathView(), isActive: $toLong){
                            
                        }
                        .padding(.horizontal)
                        Button("Long Path") {
                            toLong = true
                        }
                        
                    }
                }
                Spacer()
            }
        }
    }
}

#Preview {
    Chapter2View()
}
