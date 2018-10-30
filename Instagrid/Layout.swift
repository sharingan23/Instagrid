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
    var images: [UIImage]
    var imageGrid: [[UIImage]]{
        switch layout {
        case .layout1x2:
            return [
            [images[0]],
            [images[1],images[2]]
            
            ]
        case .layout2x1:
            return [
                [images[0],images[1]],
                [images[2]]
                
            ]
        case .layout2x2:
            return [
                [images[0],images[1]],
                [images[2],images[3]]
                
            ]
            
        }
        
    }
    
    init () {
        self.images = [UIImage(named: "Combined Shape")!,UIImage(named: "Combined Shape")!,UIImage(named: "Combined Shape")!,UIImage(named: "Combined Shape")!]
    }
    
    enum Layout {
        case layout1x2
        case layout2x2
        case layout2x1
    }
    
    var layout: Layout = .layout1x2
}
