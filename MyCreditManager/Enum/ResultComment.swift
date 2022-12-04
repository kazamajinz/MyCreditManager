//
//  ResultComment.swift
//  MyCreditManager
//
//  Created by Pane on 2022/11/15.
//
import Foundation

enum ResultComment {
    case addStudent(String)
    case removeStudent(String)
    case addSubject([String])
    case removeSubject([String])
    case showAverage([Subject])
    case termination
    
    func discriptionPrint() {
        switch self {
        case .termination:
            print("프로그램을 종료합니다...")
        case .addStudent(let studentName):
            print("\(studentName) 학생을 추가했습니다.")
        case .removeStudent(let studentName):
            print("\(studentName) 학생을 삭제하였습니다.")
        case .addSubject(let studentInfo):
            print("\(studentInfo[0]) 학생의 \(studentInfo[1]) 과목이 \(studentInfo[2])로 추가(변경)되었습니다.")
        case .removeSubject(let studentInfo):
            print("\(studentInfo[0]) 학생의 \(studentInfo[1]) 과목의 성적이 삭제되었습니다.")
        case .showAverage(let subjectInfo):
            subjectInfo.forEach {
                print("\($0.name): \($0.score.description)")
            }
            let scoreSum = subjectInfo.map{$0.score.rawValue}.reduce(0.0,+)
            let subjectCount = Double(subjectInfo.count)
            print("평점 : \(trunc(scoreSum / subjectCount * 100) / 100)")
        }
    }
}
