//
//  TaskViewModel.swift
//  ToDo project + MVVM + Localized
//
//  Created by Enric Herce on 7/10/21.
//

import Foundation

class TaskViewModel: Identifiable, ObservableObject{
    
    //init not necessary because we init all variables
    @Published var tasks:[Task] = [Task(name: "Test Task", taskName: "First task we inserted as a test", date: Date(timeIntervalSinceReferenceDate:1619231231.0),priority: .normal)]
    
    //by default we order tasks alphabetical
    @Published var taskOrder:SortType = .alphabetical
    //is presented?
    //searched?
    
    func addTask(_ task:Task){
        tasks.append(task)
    }
    
    func removeTask(atIndex index:Int){
        tasks.remove(at:index)
    }
    
    func sortTasks(){
        switch taskOrder {
        case .alphabetical:
            tasks.sort(by: { $0.name < $1.name })
        case .date:
            tasks.sort(by: { $0.date < $1.date })
        case .priority:
            tasks.sort(by: { $0.priority < $1.priority })
        }
    }
    
}
