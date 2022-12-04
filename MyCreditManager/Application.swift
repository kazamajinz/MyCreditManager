//
//  Application.swift
//  MyCreditManager
//
//  Created by 이정환 on 2022/12/01.
//

import Foundation

class Application {
    private let students = StudentFunction()
    
    func startProgrom() {
        while true {
            do {
                let input = try inputData(type: .startApplication)
                switch input {
                case "1":
                    let studentName = try inputData(type: .addStudent)
                    try students.addStudent(studentName: studentName)
                case "2":
                    let studentName = try inputData(type: .removeStudent)
                    try students.removeStudent(studentName: studentName)
                case "3":
                    let studentInfo = try inputData(type: .addSubject)
                    try students.addSubject(info: studentInfo)
                case "4":
                    let studentInfo = try inputData(type: .removeSubject)
                    try students.removeSubject(info: studentInfo)
                case "5":
                    let studentName = try inputData(type: .showAverage)
                    try students.showAverage(studentName: studentName)
                case "X":
                    termination()
                default:
                    ErrorComent.mainError.discriptionPrint()
                }
            } catch let error as ErrorComent {
                error.discriptionPrint()
            } catch {
                print(error)
            }
        }
    }
    
    private func inputData(type: MenualComment) throws -> String {
        type.viewDefaultComment()
        guard let input = readLine() else { throw ErrorComent.inputError }
        guard input != "" else { throw ErrorComent.inputError }
        return input
    }
    
    private func termination() {
        ResultComment.termination.discriptionPrint()
        exit(0)
    }
}
