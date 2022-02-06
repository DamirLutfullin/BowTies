//
//  ColorAttributeTransformer.swift
//  BowTies
//
//  Created by Damir L on 31.01.2022.
//

import UIKit

class ColorAttributeTransformer: NSSecureUnarchiveFromDataTransformer {
    
    override class var allowedTopLevelClasses: [AnyClass] {
        return [UIColor.self]
    }
    
    static func register() {
        let className =
        String(describing: ColorAttributeTransformer.self)
        let name = NSValueTransformerName(className)
        
        let transformer = ColorAttributeTransformer()
        ValueTransformer.setValueTransformer(
            transformer, forName: name)
    }
}
