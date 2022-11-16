//
//  main.swift
//  MyCreditManager
//
//  Created by Pane on 2022/11/14.
//


import Foundation

var studentListKeys: Set<String> = []
var studentScoreDic: [String:[String:String]] = [:]
var scoreDic: [String:Double] = ["A+":4.5, "A": 4.0, "B+":3.5, "B":3.0, "C+":2.5, "C":2.0, "D+":1.5, "D":1.0, "F":0.0]

while true {
    viewDefaultComment(.실행)
    let input = readLine()
    switch input {
    case "1":
        addStudent()
    case "2":
        removeStudent()
    case "3":
        addScore()
    case "4":
        removeScore()
    case "5":
        viewRating()
    case "X":
        viewResultComment(.종료)
        exit(0)
    default:
        viewErrorComment(.메인에러)
    }
}
