//
//  Score.swift
//  MyCreditManager
//
//  Created by 이정환 on 2022/12/04.
//

import Foundation

enum Score: Double, CaseIterable {
    case aPlus = 4.5
    case a = 4.0
    case bPlus = 3.5
    case b = 3.0
    case cPlus = 2.5
    case c = 2.0
    case dPlus = 1.5
    case d = 1.0
    case f = 0.0
    
    var description: String {
        switch self {
        case.aPlus:
            return "A+"
        case .a:
            return "A"
        case .bPlus:
            return "B+"
        case .b:
            return "B"
        case .cPlus:
            return "C+"
        case .c:
            return "C"
        case .dPlus:
            return "D+"
        case .d:
            return "D"
        case .f:
            return "F"
        }
    }
    
    init(description: String) {
        switch description {
        case "A+":
            self = .aPlus
        case "A":
            self = .a
        case "B+":
            self = .bPlus
        case "B":
            self = .b
        case "C+":
            self = .cPlus
        case "C":
            self = .c
        case "D+":
            self = .dPlus
        case "D":
            self = .d
        default:
            self = .f
        }
    }
}
