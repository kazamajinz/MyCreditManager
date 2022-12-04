//
//  MenualComment.swift
//  MyCreditManager
//
//  Created by 이정환 on 2022/12/04.
//

enum MenualComment {
    case startApplication
    case addStudent
    case removeStudent
    case addSubject
    case removeSubject
    case showAverage
    
    func viewDefaultComment() {
        switch self {
        case .startApplication:
            print("""
            원하는 기능을 입력해주세요
            1: 학생추가, 2: 학생삭제, 3: 성적추가(변경), 4: 성적삭제, 5: 평점보기, X: 종료
            """)
        case .addStudent:
            print("추가할 학생의 이름을 입력해주세요")
        case .removeStudent:
            print("삭제할 학생의 이름을 입력해주세요")
        case .addSubject:
            print("""
            성적성적을 추가할 학생의 이름, 과목 이름, 성적(A+, A, F 등)을 띄어쓰기로 구분하여 차례로 작성해주세요.
            입력예) Mickey Swift A+
            만약에 학생의 성적 중 해당 과목이 존재하면 기존 점수가 갱신됩니다.
            """)
        case .removeSubject:
            print("""
            성적을 삭제할 학생의 이름, 과목 이름을 띄어쓰기로 구분하여 차례로 작성해주세요.
            입력예) Mickey Swift
            """)
        case .showAverage:
            print("평점을 알고싶은 학생의 이름을 입력해주세요")
        }
    }
}
