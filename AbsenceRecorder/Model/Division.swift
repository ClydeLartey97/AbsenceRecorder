//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Clyde Lartey on 02/02/2022.
//

import Foundation


class Division {
    let code: String
    var students: [Student] = []
    
    init(code: String) {
        self.code = code
    }
    
    
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        
        
        for i in 1...size{
            let student = Student(forename: "Firstname\(i)", surname: "Surname\(i)", birthday: Date())
            division.students.append(student)
        }
        return division
    }
    
    static let examples = [Division.createDivision(code: "vBY-1", of: 8),
                           Division.createDivision(code: "vCY-1", of: 10),
                           Division.createDivision(code: "vBX-1", of: 16),
                           Division.createDivision(code: "vCW-1", of: 14)]
    
}
