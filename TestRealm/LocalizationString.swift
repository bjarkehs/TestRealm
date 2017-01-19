//
//  LocalizationString.swift
//  TestRealm
//
//  Created by Bjarke Hesthaven Søndergaard on 19/01/2017.
//  Copyright © 2017 Bjarke. All rights reserved.
//

import Foundation
import RealmSwift

public final class LocalizationString: Object {
    public var localizationId = ""
    public var language = ""
    public var translationKey = ""
    public var translationValue = ""
    
    override public static func primaryKey() -> String? {
        return #keyPath(LocalizationString.localizationId)
    }
    
    convenience init(language: String, key: String, value: String) {
        self.init()
        
        self.localizationId = "\(language)-\(key)"
        self.language = language
        self.translationKey = key
        self.translationValue = value
    }
}
