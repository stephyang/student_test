//
//  studentscore.swift
//  student_test
//
//  Created by stephanie yang on 2016/3/13.
//  Copyright © 2016年 stephanie yang. All rights reserved.
//

import Foundation

struct Student {
    var name: String
    var score: Int
}

struct Class {
    var students:[Student]=[
    Student(name: "Monkey", score:100 ),
    Student(name: "Steph", score: 90)
    ]
}