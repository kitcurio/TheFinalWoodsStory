//
//  Events&Char.swift
//  TheFinalWoodsStory
//
//  Created by Kasia Rivers on 11/16/23.
//

import SwiftUI

enum Calamity: CaseIterable{
    case tremor, lightning, mosquitoSwarm, beast, dimensionRift, ambush, forestFire, quickSand, crow
    
    var description: String{
        switch self {
        case .tremor:
            "A tremor rattles the land causing you to stumble around"
        case .lightning:
            "Lighting strikes the ground in front of you!"
        case .mosquitoSwarm:
            "Blood sucking demons in the form of insects swarm you as if they were pelted."
        case .beast:
            "A formidable beast can be heard from afar...."
        case .dimensionRift:
            "A dimension rift appears allowing ou peer into a realm far beyond your comprehension!"
        case .ambush:
            "You were ambushed by a squirrel, but thought nothing of it"
        case .forestFire:
            "An arsonist decided to light a tree on fire within your peripheral vision."
        case .quickSand:
            "A quicksand pit appears magically below your feet. You twist and pull your legs from the inconvenient pool of sand."
        case .crow:
            "A crow flies into your face."
        }
    }
}

enum Character{
    case Anon
    case Snuggly
    case Miriam
    case Dennis
    case Narrator
    
    var dialoguePriority: String{
        switch self{
        case .Snuggly:
            "Snuggly: "
        case .Miriam:
            "Miriam: "
        case .Dennis:
            "Dennis: "
        case .Anon:
            "Anon: "
        case .Narrator:
            "Narrator: "
        }
    }
}
