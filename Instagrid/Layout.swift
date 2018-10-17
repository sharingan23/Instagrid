//
//  Layout.swift
//  Instagrid
//
//  Created by Vigneswaranathan Sugeethkumar on 16/10/2018.
//  Copyright © 2018 Vigneswaranathan Sugeethkumar. All rights reserved.
//

import Foundation
import UIKit

class   Layout {
    var images: [[UIImage]]
    
    init () {
        self.images = []
    }
    
    enum Layout {
        case layout1x2
        case layout2x2
        case layout2x1
    }
    
    var layout: Layout = .layout1x2 {
        didSet {
            switch oldValue {
            // cas 1 = .layout1x2
            case .layout1x2:
                switch layout {
                case .layout1x2:
                    break
                case .layout2x1:
                    //remove 1 from images[1]
                    if images[1].count > 1 {
                        images[0].append(images[1].removeLast())
                    }
                case .layout2x2:
                    //add 1 in images[0]
                    images[0].append(images[0][0])
                    break
                }
                
            case .layout2x1:
                switch layout {
                case .layout1x2:
                    //remove 1 from images[0]
                    if images[0].count > 1 {
                        images[0].removeLast()
                    }
                    //add 1 in images[1]
                    images[1].append(images[0][1])
                    break
                case .layout2x1:
                    break
                case .layout2x2:
                    //add 1 in images[1]
                    images[1].append(images[0][0])
                    break
                }
                
            case .layout2x2:
                switch layout {
                case .layout1x2:
                    if images[0].count > 1 {
                        images[0].removeLast()
                    }
                case .layout2x1:
                    if images[1].count > 1 {
                        images[1].removeLast()
                    }
                case .layout2x2: break
                    
                }
                
            }
            
        }
    }
}
