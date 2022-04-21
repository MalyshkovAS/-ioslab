//
//  NovellaSettings.swift
//  lab1
//
//  Created by George Zibrovsky on 21.04.2022.
//
import Foundation
final class NovellaSettings{
    private enum SettingsKey:String{
        case userName
        case currentPageId
    }
    static var userName:String!{
        get{
            return UserDefaults.standard.string(forKey: SettingsKey.userName.rawValue)
        }
        set{
            let defaults = UserDefaults.standard
            let key = SettingsKey.userName.rawValue
            defaults.set(newValue,forKey: key)
            
        }
    }
    static var currentPage:String!{
        get{
            return UserDefaults.standard.string(forKey: SettingsKey.currentPageId.rawValue)
        }
        set{
            let defaults = UserDefaults.standard
            let key = SettingsKey.currentPageId.rawValue
            defaults.set(newValue,forKey: key)
            
        }
    }
}
