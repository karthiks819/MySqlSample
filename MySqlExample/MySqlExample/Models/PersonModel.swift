//
//  Model.swift
//  MySqlExample
//
//  Created by Karthik on 30/03/21.
//

import Foundation

class PersonModel
{
    
    var name: String = ""
    var age: Int = 0
    var id: Int = 0
    
    init(id:Int, name:String, age:Int)
    {
        self.id = id
        self.name = name
        self.age = age
    }
    
}
