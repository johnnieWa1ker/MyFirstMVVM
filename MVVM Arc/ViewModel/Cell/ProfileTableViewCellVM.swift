//
//  ProfileTableViewCellVM.swift
//  MVVM Arc
//
//  Created by Johnnie Walker on 27.08.2020.
//

import Foundation

class ProfileTableViewCellVM {
    
    // Все так же как и в "большом" ViewModel - ProfiltViewVM - класс содержит только данные (+ инициализатор) ...
    private var profile: Profile
    
    init(profile: Profile) {
        self.profile = profile
    }
}

// ... а методы проектируются "от абстракции" - от протокола

// MARK: - ProfileTableViewCellVMProtocol
extension ProfileTableViewCellVM: ProfileTableViewCellVMProtocol {
    
    var fullName: String {
        return profile.name + " " + profile.secondName
    }

    var age: String {
        return String(describing: profile.age)
    }
}
