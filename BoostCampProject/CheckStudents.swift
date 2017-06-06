 //
//  CheckStudents.swift
//  BoostCampProject
//
//  Created by HannaJeon on 2017. 6. 6..
//  Copyright © 2017년 HannaJeon. All rights reserved.
//

import Foundation

class CheckStudents {
    func checkStudent(students: [ModelStudents]) -> ModelResultTable {
        var totalAvg = 0.0
        var personalGrade = [String : String]()
        var passStudents = [String]()
        
        students.forEach { (student) in
            let name = student.getStudent()["name"] as! String
            let grade = student.getStudent()["grade"] as! [String : Double]
            let personalAvg = (grade.values.reduce(0) { $0 + $1 }) / Double(grade.count)

            totalAvg += personalAvg

            if 90 <= personalAvg && personalAvg <= 100 {
                personalGrade[name] = "A"
            } else if 80 <= personalAvg && personalAvg < 90 {
                personalGrade[name] = "B"
            } else if 70 <= personalAvg && personalAvg < 80 {
                personalGrade[name] = "C"
            } else if 60 <= personalAvg && personalAvg < 70 {
                personalGrade[name] = "D"
            } else {
                personalGrade[name] = "F"
            }
            
            if personalAvg >= 70 {
                passStudents.append(name)
            }
        }
        let classAvg = totalAvg / Double(personalGrade.count)
        
        return ModelResultTable(classAvg: classAvg, personalGrade: personalGrade, passStudents: passStudents)
    }
}
