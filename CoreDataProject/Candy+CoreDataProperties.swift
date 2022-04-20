//
//  Candy+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Evi St on 4/20/22.
//
//

import Foundation
import CoreData


extension Candy {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Candy> {
        return NSFetchRequest<Candy>(entityName: "Candy")
    }

    @NSManaged public var name: String?
    @NSManaged public var origin: Country?
    
    
    public var unwrappedName: String {
        name ?? "Unknown candy"
    }
}

extension Candy : Identifiable {

}
