//
//  ProfileViewVMProtocol.swift
//  MVVM Arc
//
//  Created by Johnnie Walker on 27.08.2020.
//

import Foundation

// Задача ViewModelProtocol - предопределить набор свойств и методов, которы могут понадобиться View для отрисовки в верстке
// Задача ViewModel - эти данные подготовить, т.е. реализовать методы своего протокола
protocol ProfileViewVMProtocol {
    
    // Метод позволяет классам, удовлетворяющим протоколу, возвращать целочисленное значение количества строк для UITableView
    func numberOfRows() -> Int
    
    // Метод позволяет классам, удовлетворяющим протоколу, возвращать модель ячейки по ее индексу в UITableView
    // Предполагается, что класс должен содержать массив объектов к которому будет применен этот метод
    func cellViewModel(forIndexPath indexPath: IndexPath) -> ProfileTableViewCellVMProtocol?
}
