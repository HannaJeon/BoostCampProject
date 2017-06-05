//
//  JsonSerialization.swift
//  BoostCampProject
//
//  Created by HannaJeon on 2017. 6. 6..
//  Copyright © 2017년 HannaJeon. All rights reserved.
//

import Foundation

class JsonSerialization {
    func jsonSerialization() -> [ModelStudents] {
        var students = [[String : Any]]()
        let path = NSHomeDirectory().appending("/students.json")
        if let data = try? String(contentsOfFile: path).data(using: .utf8) {
            let json = try! JSONSerialization.jsonObject(with: data!, options: []) as! [[String : Any]]
            students = json
        }
        
        var modelStudents = [ModelStudents]()
        students.forEach { (student) in
            let name = student["name"] as! String
            let grade = student["grade"] as! [String : Double]
            let modelStudent = ModelStudents(name: name, grade: grade)
            modelStudents.append(modelStudent)
        }
        return modelStudents
    }
}
