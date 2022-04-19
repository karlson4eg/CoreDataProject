//
//  Movie+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Evi St on 4/19/22.
//
//

import Foundation
import CoreData


extension Movie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movie> {
        return NSFetchRequest<Movie>(entityName: "Movie")
    }

    @NSManaged public var director: String?
    @NSManaged public var title: String?
    @NSManaged public var year: Int16

}

extension Movie : Identifiable {

}
