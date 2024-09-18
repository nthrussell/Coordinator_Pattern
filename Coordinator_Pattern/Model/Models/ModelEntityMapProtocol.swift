//
//  ModelEntityMapProtocol.swift
//  Coordinator_Pattern
//
//  Created by russel on 18/9/24.
//

import Foundation
import CoreData

protocol ModelEntityMapProtocol {
    associatedtype EntityType: NSManagedObject

    func mapToEntity(_ context: NSManagedObjectContext) -> EntityType
    static func mapFromEntity(_ entity: EntityType) -> Self
}
