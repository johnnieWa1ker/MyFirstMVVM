//
//  ProfileTableViewCellViewModel.swift
//  My First MVVM
//
//  Created by Johnnie Walker on 27.08.2020.
//

import Foundation

protocol ProfileTableViewCellViewModelProtocol: class {
    var fullName: String { get }
    var age: String { get }
}

class ProfileTableViewCellViewModel: ProfileTableViewCellViewModelProtocol {
    
    private var profile: Profile
    
    var fullName: String {
        return profile.name + " " + profile.secondName
    }

    var age: String {
        return String(describing: profile.age)
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
