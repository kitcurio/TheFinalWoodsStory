//
//  SnugglyView.swift
//  ElusiveProblems
//
//  Created by Cannon Goldsby on 11/15/23.
//

import SwiftUI

struct SnugglyView: View {
    var characterSnugg: Character = .Snuggly
    var character: Character = .Anon
    var characterNar: Character = .Narrator
    var body: some View {
        Text("???: Watch where you going.... CaWWwwww!!!")
        Text(characterNar.dialoguePriority+"Dazed by the impact, you check your surroundings to see who is speaking to you.  You look side to side even up and dow-.... It's a crow.")
        Text(character.dialoguePriority+"Oh my goodness! It's a talking crow in the flesh! Wait a minute. You look familiar....")
     

        Text(character.dialoguePriority+"You're the bird who tampered with the health of my mom.")
        Text(characterSnugg.dialoguePriority + "CawwWWW?! Clearly you have me mistaken for someone else! I am but a humble avian trader, but you may call me \"Snuggly\"!")
        Text(characterSnugg.dialoguePriority+"I don't have much time, but I'll grant you a boon for the inconvenience.... Goodbye!")
        Text(character.dialoguePriority+"Hey! Wait! Snuggly come back!")
    }
}

#Preview {
    SnugglyView()
}
