//
//  Output.swift
//  BoostCampProject
//
//  Created by HannaJeon on 2017. 6. 6..
//  Copyright © 2017년 HannaJeon. All rights reserved.
//

import Foundation

class Output {
    func makeTextFile(resultTable: ModelResultTable) {
        let resultTable = resultTable.getResultTable()
        let classAvg = Double(round(100 * (resultTable["classAvg"] as! Double)) / 100)
        let personalGrade = (resultTable["personalGrade"] as! [String : String]).sorted{ $0.key < $1.key }
        let passStudents = (resultTable["passStudents"] as! [String]).sorted{ $0 < $1 }
        
        var result = "성적결과표\n\n전체 평균 : \(classAvg)\n\n개인별 학점\n"
        for(key, value) in personalGrade {
            result += "\(key)\t   : \(value)\n"
        }
        
        for i in 0..<passStudents.count {
            result += i == 0 ? "\n\n수료생\n\(passStudents[i]), " : i == passStudents.count-1 ? passStudents[i] : "\(passStudents[i]), "
        }
        
        let filename = NSHomeDirectory().appending("/result.txt")
        try? result.write(toFile: filename, atomically: true, encoding: .utf8)
    }
}
