//
//  Student.swift
//  MyCreditManager
//
//  Created by 이정환 on 2022/12/04.
//

import Foundation

struct Student {
    let name: String
    var subjects: [Subject] = []
    
    init(name: String) {
        self.name = name
    }
}
