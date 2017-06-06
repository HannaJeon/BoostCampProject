//
//  main.swift
//  BoostCampProject
//
//  Created by HannaJeon on 2017. 6. 5..
//  Copyright © 2017년 HannaJeon. All rights reserved.
//

import Foundation

let students = JsonSerialization().jsonSerialization()
let resultTable = CheckStudents().checkStudent(students: students)
Output().makeTextFile(resultTable: resultTable)
