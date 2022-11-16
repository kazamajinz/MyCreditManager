//
//  Menual.swift
//  MyCreditManager
//
//  Created by Pane on 2022/11/14.
//

func addStudent() {
    viewDefaultComment(.학생추가)
    if let studentName = readLine(), checkBasic(studentName) {
        if studentListKeys.contains(studentName) {
            viewErrorComment(.학생추가에러, studentName)
        } else {
            studentListKeys.insert(studentName)
            viewResultComment(.학생추가, studentName)
        }
    } else {
        viewErrorComment(.서브에러)
    }
}

func removeStudent() {
    viewDefaultComment(.학생삭제)
    if let studentName = readLine(), checkBasic(studentName) {
        if let index = studentListKeys.firstIndex(of: studentName) {
            studentListKeys.remove(at: index)
            viewResultComment(.학생삭제, studentName)
        } else {
            viewErrorComment(.학생삭제에러, studentName)
        }
    } else {
        viewErrorComment(.서브에러)
    }
}

func addScore() {
    viewDefaultComment(.성적추가)
    if let input = readLine() {
        let scoreData = input.components(separatedBy: " ")
        if scoreData.count == 3, checkArr(scoreData) {
            let studentName = scoreData[0]
            let subject = scoreData[1]
            let score = scoreData[2]
            if studentListKeys.contains(studentName) {
                if var tempDic = studentScoreDic[studentName] {
                    tempDic[subject] = score
                    studentScoreDic.updateValue(tempDic, forKey: studentName)
                } else {
                    studentScoreDic.updateValue([subject:score], forKey: studentName)
                }
                viewResultComment(.성적추가, studentName, subject, score)
                return
            }
        }
    }
    viewErrorComment(.서브에러)
}

func removeScore() {
    viewDefaultComment(.성적삭제)
    if let input = readLine() {
        let studentData = input.components(separatedBy: " ")
        if studentData.count == 2, checkArr(studentData) {
            let studentName = studentData[0]
            let subject = studentData[1]
            if studentListKeys.contains(studentName) {
                studentListKeys.remove(studentName)
                studentScoreDic.removeValue(forKey: studentName)
                viewResultComment(.성적삭제, studentName, subject)
            } else {
                viewErrorComment(.성적삭제에러, studentName)
            }
        } else {
            viewErrorComment(.서브에러)
        }
    }
}

func viewRating() {
    viewDefaultComment(.평점보기)
    if let studentName = readLine(), checkBasic(studentName) {
        if studentListKeys.contains(studentName), let subjectData = studentScoreDic[studentName] {
            viewResultComment(.평점보기, subjectData)
        } else {
            viewErrorComment(.평점보기에러, studentName)
        }
    } else {
        viewErrorComment(.서브에러)
    }
}

func checkBasic(_ str: String) -> Bool {
    if str == "" {
        return false
    } else {
        for i in Array(str) {
            if !i.isNumber && !i.isCased {
                return false
            }
        }
        return true
    }
}

func checkArr(_ arr: [String]) -> Bool {
    for i in 0..<arr.count {
        if arr[i] == "" {
            return false
        } else {
            let temp = Array(arr[i])
            for j in 0..<temp.count {
                if i != 2 {
                    if !temp[j].isCased {
                        return false
                    }
                } else {
                    return checkScore(arr[i])
                }
            }
        }
    }
    return true
}

func checkScore(_ str: String) -> Bool {
    if scoreDic.keys.contains(str){
        return true
    } else {
        return false
    }
}
