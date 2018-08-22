//
//  ViewController.swift
//  Instagrid
//
//  Created by Vigneswaranathan Sugeethkumar on 09/08/2018.
//  Copyright © 2018 Vigneswaranathan Sugeethkumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var square1: UIButton!
    
    @IBOutlet weak var square2: UIButton!
    
    @IBOutlet weak var rectangle: UIButton!
    
    @IBOutlet weak var twoSquare: UIStackView!
    
    @IBOutlet weak var rectangleStack: UIStackView!
    
    @IBOutlet weak var rectangleAndSquare: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       interveStack()
    }
    
    
    @IBAction func layout1() {
      
    }
    
    @IBAction func layout2() {
    
    }
    
    @IBAction func layout3() {
    }
    
    @IBAction func squareLeft() {
    }
    
    @IBAction func squareRight() {
    }
    
    @IBAction func rectangle1() {
    }
    
    func interveStack(){
         rectangleAndSquare.addArrangedSubview(self.rectangleAndSquare.subviews[0])
    }
    

   


}

