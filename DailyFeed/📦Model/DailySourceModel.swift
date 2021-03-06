//
//  DailySourceModel.swift
//  DailyFeed
//
//  Created by Sumit Paul on 30/12/16.
//

//Data Model

struct Sources: Codable {
    init(sources: [DailySourceModel]) {
        self.sources = sources
    }
    public var sources: [DailySourceModel]
}

struct DailySourceModel: Codable {
    public let sid: String
    public let name: String
    public let category: String
    public let description: String
    public let isoLanguageCode: String
    
    init(langCode: String) {
        isoLanguageCode = langCode
        category = ""
        name = langCode
        sid = ""
        description = langCode
    }
    init(langCode: String, category: String, description: String) {
        self.isoLanguageCode = langCode
        self.category = category
        name = category
        sid=""
        self.description = description
    }
    
    private enum CodingKeys: String, CodingKey {
        case sid = "id"
        case name, category, description
        case isoLanguageCode = "language"
    }
}
