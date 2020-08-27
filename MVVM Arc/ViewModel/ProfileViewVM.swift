//
//  ProfileViewVM.swift
//  MVVM Arc
//
//  Created by Johnnie Walker on 27.08.2020.
//

import Foundation

class ProfileViewVM {
    
    // Для простоты понимания, как создавать сущности во ViewModel - класс должен содержать только свойства, причем они должны быть приватными, что бы не иметь возможности менять данные из вне
    private var profiles = [Profile(name: "Mike", secondName: "Mayers", age: 24),
                            Profile(name: "Johnnie", secondName: "Sins", age: 45),
                            Profile(name: "Viktor", secondName: "Kram", age: 33)]
    
    // Методы задаются в абстракции - в протоколе и реализуются через расширение к классу. Просто так нагляднее.
}

// MARK: - ProfileViewVMProtocol
extension ProfileViewVM: ProfileViewVMProtocol {
    
    // Методы класса должны наследоваться от абстракции - от протокола.
    // Вопрос, что было бы и можно ли в принципе обойтись без протоколов?
    
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> ProfileTableViewCellVMProtocol? {
        let profile = profiles[indexPath.row]
        return ProfileTableViewCellVM(profile: profile)
    }
}
