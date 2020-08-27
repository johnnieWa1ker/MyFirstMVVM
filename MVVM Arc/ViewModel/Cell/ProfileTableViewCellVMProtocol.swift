//
//  ProfileTableViewCellVMProtocol.swift
//  MVVM Arc
//
//  Created by Johnnie Walker on 27.08.2020.
//

import Foundation

// Задача ViewModelProtocol - предопределить набор свойств и методов, которы могут понадобиться View для отрисовки в верстке
// Задача ViewModel - эти данные подготовить, т.е. реализовать методы своего протокола
protocol ProfileTableViewCellVMProtocol: class {
    
    // В этом случае, протокол задает какими свойствами должен обладать класс ViewModel, что бы для View, всегда имелись данные для отрисовки
    var fullName: String { get }
    var age: String { get }
}
