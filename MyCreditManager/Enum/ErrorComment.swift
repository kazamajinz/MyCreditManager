//
//  ErrorComment.swift
//  MyCreditManager
//
//  Created by 이정환 on 2022/12/04.
//

enum ErrorComent: Error {
    case mainError
    case inputError
    case existStudent(String)
    case noStudentError(String)
    case addSubjectError
    case noSubjectError(String)
    case showAverageError
    
    var discription: String {
        switch self {
        case .inputError:
            return "입력이 잘못되었습니다. 다시 확인해주세요."
        case .existStudent(let studentName):
            return "\(studentName)은 이미 존재하는 학생입니다. 추가하지 않습니다."
        case .noStudentError(let studentName):
            return "\(studentName) 학생을 찾지 못했습니다."
        default:
            return "뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요."
        }
    }
    
    func discriptionPrint() {
        switch self {
        case .inputError:
            print("입력이 잘못되었습니다. 다시 확인해주세요.")
        case .existStudent(let studentName):
            print("\(studentName)은 이미 존재하는 학생입니다. 추가하지 않습니다.")
        case .noStudentError(let studentName):
            print("\(studentName) 학생을 찾지 못했습니다.")
        case .noSubjectError(let subjectName):
            print("\(subjectName) 과목을 찾지 못했습니다.")
        default:
            print("뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요.")
        }
    }
}
