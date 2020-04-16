//
//  UserDefaultsHelpers.swift
//
//  Created by Navjot Singh on 4/15/20.
//  Copyright © 2020 Navjot Singh. All rights reserved.
//


import Foundation

extension UserDefaults {
    
    enum UserDefaultsKeys: String {
        case isLoggedIn
        case userDetails
        case accesskey
    }
    
    func setAccessKey(value: String){
        set(value, forKey: UserDefaultsKeys.accesskey.rawValue)
        synchronize()
    }
    
    func getAccessKey() -> String?{
        return string(forKey: UserDefaultsKeys.accesskey.rawValue)
    }
    
    func setIsLoggedIn(value: Bool){
        set(value, forKey: UserDefaultsKeys.isLoggedIn.rawValue)
        synchronize()
    }
    
    func isLoggedIn() -> Bool{
        return bool(forKey: UserDefaultsKeys.isLoggedIn.rawValue)
    }
    
    func setUserDetails(value: NSDictionary){
        set(value, forKey: UserDefaultsKeys.userDetails.rawValue)
        synchronize()
    }
    
    func getUserDetails() -> NSDictionary{
        if let arr = dictionary(forKey: UserDefaultsKeys.userDetails.rawValue){
            if arr.count > 0 {
                return arr as NSDictionary
            }
        }
        return NSDictionary()
    }
    
    func removeAllFromUserDefault(){
        removeObject(forKey: UserDefaultsKeys.accesskey.rawValue)
        removeObject(forKey: UserDefaultsKeys.isLoggedIn.rawValue)
        removeObject(forKey: UserDefaultsKeys.userDetails.rawValue)
        synchronize()
    }
    
}
