//
//  TaskModel.swift
//  ToDo project + MVVM + Localized
//
//  Created by Enric Herce on 7/10/21.
//

import Foundation

struct Task:Identifiable{
    var id:UUID = UUID()
    let name : String
    let taskName : String
    let date : Date
    let priority:status
    
    enum status:CaseIterable,Comparable{
        case normal
        case medium
        case high
    }
    
}

enum SortType : String , Identifiable , CaseIterable {
    
    var id : String { rawValue }
    
    case alphabetical
    case date
    case priority
    
}
