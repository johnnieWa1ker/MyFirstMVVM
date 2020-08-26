//
//  ProfileViewViewModel.swift
//  My First MVVM
//
//  Created by Johnnie Walker on 27.08.2020.
//

import Foundation

protocol ProfileViewViewModelProtocol {
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath indexPath: IndexPath) -> ProfileTableViewCellViewModelProtocol?
}

class ProfileViewViewModel: ProfileViewViewModelProtocol {
    
    private var profiles = [Profile(name: "Mike", secondName: "Mayers", age: 24),
                            Profile(name: "Johnnie", secondName: "Sins", age: 45),
                            Profile(name: "Viktor", secondName: "Kram", age: 33)]
    
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> ProfileTableViewCellViewModelProtocol? {
        
        let profile = profiles[indexPath.row]
        return ProfileTableViewCellViewModel(profile: profile)
    }
    
}
