//
//  ModelResultTable.swift
//  BoostCampProject
//
//  Created by HannaJeon on 2017. 6. 6..
//  Copyright © 2017년 HannaJeon. All rights reserved.
//

import Foundation

class ModelResultTable {
    private let classAvg : Double
    private let personalGrade : [String : String]
    private let passStudents : [String]
    
    init(classAvg: Double, personalGrade: [String : String], passStudents: [String]) {
        self.classAvg = classAvg
        self.personalGrade = personalGrade
        self.passStudents = passStudents
    }
    
    func getResultTable() -> [String : Any] {
        var resultTable = [String : Any]()
        resultTable["classAvg"] = classAvg
        resultTable["personalGrade"] = personalGrade
        resultTable["passStudents"] = passStudents
        return resultTable
    }
}
