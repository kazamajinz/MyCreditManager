//
//  Subject.swift
//  MyCreditManager
//
//  Created by 이정환 on 2022/12/04.
//

import Foundation

struct Subject {
    let name: String
    var score: Score
    
    init(name: String, score: Score) {
        self.name = name
        self.score = score
    }
}
