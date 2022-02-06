//
//  BowTies+CoreDataProperties.swift
//  BowTies
//
//  Created by Damir L on 31.01.2022.
//
//

import UIKit
import CoreData


extension BowTie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<BowTie> {
        return NSFetchRequest<BowTie>(entityName: "BowTie")
    }

    @NSManaged public var name: String?
    @NSManaged public var rating: Double
    @NSManaged public var lastWorn: Date?
    @NSManaged public var timesWorn: Int32
    @NSManaged public var isFavorite: Bool
    @NSManaged public var photoData: Data?
    @NSManaged public var id: UUID?
    @NSManaged public var url: URL?
    @NSManaged public var searchKey: String?
    @NSManaged public var tintColor: UIColor?

}

extension BowTie : Identifiable {

}
