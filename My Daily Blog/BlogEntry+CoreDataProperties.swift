//
//  BlogEntry+CoreDataProperties.swift
//  My Daily Blog
//

import Foundation
import CoreData


extension BlogEntry {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<BlogEntry> {
        return NSFetchRequest<BlogEntry>(entityName: "BlogEntry")
    }

    @NSManaged public var date: Date?
    @NSManaged public var content: String?

}

extension BlogEntry : Identifiable {
    func setMonth() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM"
        if let dateToBeModified = date {
            let month = dateFormatter.string(from: dateToBeModified)
            return month.uppercased()
        }
        return "ERR"
    }
    
    func setDay() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "d"
        if let dateToBeModified = date {
            let date = dateFormatter.string(from: dateToBeModified)
            return date.uppercased()
        }
        return "ER"
    }
}
