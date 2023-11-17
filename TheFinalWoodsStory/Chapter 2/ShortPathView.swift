//
//  ShortPathView.swift
//  ElusiveProblems
//
//  Created by Cannon Goldsby on 11/15/23.
//

import SwiftUI

struct ShortPathView: View {
    @State var situation: Bool?
    var characterDen: Character = .Dennis
    var character: Character = .Anon
    var characterNar: Character = .Narrator
    var body: some View {
        NavigationStack{
            VStack{
                Text(characterNar.dialoguePriority + "Taking the short path  towards the woods instead of the benevolent road you push on. The woods may be one of the most unwelcoming places you have been to, just yet. Can be described as: eerie, menacing, dim and just right chilling! You feel a breeze pass you by, but there is a residual chill that climbs up your spine, still.")
                Text(characterNar.dialoguePriority + "You feel a breeze pass you by, but there is a residual chill that climbs up your spine, still.")
                HStack{
                    FadingText(text: "???: Hello, Traveler!")
                    Spacer()
                }
                Text(characterNar.dialoguePriority + "Startled by the voice, you frantically turn your head to survey your surroundings. Alas, nothing sentient seems to be in the area.")
                Text(characterNar.dialoguePriority + "Your breathing becomes labored and your chest feels like there is a knot tugging at your sternum")
                FadingText(text: characterDen.dialoguePriority + "Hahaha... I can understand the confusion, as I am a spirit that must inhabit a vessel in order to communicate with people. Ah!  I forgot to give you my name, it's Dennis.")
                FadingText(text:characterDen.dialoguePriority + "Would you like to listen to a story of mine?")
                Text("Yes or No?")
                YesOrNo(isSelected: $situation)
                
                if let answer = situation {
                    if answer {
                        Text(characterDen.dialoguePriority + "I appreciate your kindness.")
                    } else {
                        Text(characterDen.dialoguePriority + "I can understand the discomfort, but this will aid you...")
                    }
                }
            }
            Text(characterNar.dialoguePriority + "As time passes on... you move on to your next path")
            }
    }
}
#Preview {
    ShortPathView()
}
