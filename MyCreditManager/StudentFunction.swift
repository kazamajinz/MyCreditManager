//
//  StudentFunction.swift
//  MyCreditManager
//
//  Created by 이정환 on 2022/12/04.
//

import Foundation

class StudentFunction {
    private var students: [Student] = []
    
    func addStudent(studentName: String) throws {
        for student in students {
            if student.name == studentName {
                throw ErrorComent.existStudent(studentName)
            }
        }
        let student = Student(name: studentName)
        students.append(student)
        ResultComment.addStudent(studentName).discriptionPrint()
    }
    
    func removeStudent(studentName: String) throws {
        guard let index = students.firstIndex(where: {$0.name == studentName}) else {
            throw ErrorComent.noStudentError(studentName)
        }
        students.remove(at: index)
        ResultComment.removeStudent(studentName).discriptionPrint()
    }
    
    func addSubject(info: String) throws {
        let studentInfo = info.components(separatedBy: " ")
        guard studentInfo.count == 3 else { throw ErrorComent.inputError }
        let studentName = studentInfo[0]
        let subject = studentInfo[1]
        let score = studentInfo[2]
        for i in 0..<students.count {
            if students[i].name == studentName {
                students[i].subjects.append(Subject(name: subject, score: Score(description: score)))
                ResultComment.addSubject(studentInfo).discriptionPrint()
                return
            }
        }
        ErrorComent.inputError.discriptionPrint()
    }
    
    func removeSubject(info: String) throws {
        let studentInfo = info.components(separatedBy: " ")
        guard studentInfo.count == 2 else { throw ErrorComent.inputError }
        let studentName = studentInfo[0]
        let subject = studentInfo[1]
        
        guard let studentIndex = students.firstIndex(where: {$0.name == studentName}) else {
            throw ErrorComent.noStudentError(studentName)
        }
        guard let subjectIndex = students[studentIndex].subjects.firstIndex(where: {$0.name == subject}) else {
            throw ErrorComent.noSubjectError(subject)
        }
        
        students[studentIndex].subjects.remove(at: subjectIndex)
        ResultComment.removeSubject(studentInfo).discriptionPrint()
    }
    
    func showAverage(studentName: String) throws {
        guard let index = students.firstIndex(where: {$0.name == studentName}) else {
            throw ErrorComent.noStudentError(studentName)
        }
        
        ResultComment.showAverage(students[index].subjects).discriptionPrint()
    }
}
