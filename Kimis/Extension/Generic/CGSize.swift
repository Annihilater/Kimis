//
//  CGSize.swift
//  Kimis
//
//  Created by Lakr Aream on 2023/1/2.
//

import CoreGraphics
import Foundation

extension CGSize: @retroactive Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine([width, height])
    }
}
