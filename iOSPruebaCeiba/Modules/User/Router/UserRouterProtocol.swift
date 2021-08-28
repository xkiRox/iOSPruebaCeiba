//
//  UserRouterProtocol.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 27/08/21.
//

import Foundation
import UIKit

protocol UserRouterProtocol: AnyObject {
    static func presentModule() -> UIViewController
}