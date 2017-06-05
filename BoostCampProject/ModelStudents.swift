//
//  Students.swift
//  BoostCampProject
//
//  Created by HannaJeon on 2017. 6. 6..
//  Copyright © 2017년 HannaJeon. All rights reserved.
//

import Foundation

class ModelStudents {
    private let name : String
    private let grade : [String : Double]
    
    init(name: String, grade: [String : Double]) {
        self.name = name
        self.grade = grade
    }
    
    func getStudent() -> [String : Any] {
        var studentInfo = [String : Any]()
        studentInfo["name"] = name
        studentInfo["grade"] = grade
        return studentInfo
    }
}
