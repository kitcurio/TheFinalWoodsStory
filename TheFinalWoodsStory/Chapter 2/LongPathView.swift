//
//  LongPathView.swift
//  ElusiveProblems
//
//  Created by Cannon Goldsby on 11/15/23.
//

import SwiftUI

struct LongPathView: View {
    var character: Character = .Anon
    var characterNar: Character = .Narrator
    var characterMir: Character = .Miriam
    var body: some View {
        Text(characterNar.dialoguePriority + "After choosing to play it safe, you decide it's best to keep a steady pace on the road ahead of you, so you can make it back to your mom without delay.")
//    end setting and characters
    }
}


#Preview {
    LongPathView()
}
