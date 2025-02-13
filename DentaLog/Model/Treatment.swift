//
//  Treatment.swift
//  DentaLog
//
//  Created by Abdulloh Bahromjonov on 10/01/25.
//

import Foundation

struct Treatment: Identifiable {
    let id = UUID()
    let name: String
    let image: String?
    let description: String
    let tooth: Tooth
}

enum Tooth: Int {
    case AA = 11
    case AB = 12
    case AC = 13
    case AD = 14
    case AE = 15
    case AF = 16
    case AG = 17
    case AH = 18
    
    case BA = 21
    case BB = 22
    case BC = 23
    case BD = 24
    case BE = 25
    case BF = 26
    case BG = 27
    case BH = 28
    
    case CA = 31
    case CB = 32
    case CC = 33
    case CD = 34
    case CE = 35
    case CF = 36
    case CG = 37
    case CH = 38
    
    case DA = 41
    case DB = 42
    case DC = 43
    case DD = 44
    case DE = 45
    case DF = 46
    case DG = 47
    case DH = 48
}
