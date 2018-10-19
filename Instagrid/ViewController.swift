//
//  ViewController.swift
//  Instagrid
//
//  Created by Vigneswaranathan Sugeethkumar on 09/08/2018.
//  Copyright © 2018 Vigneswaranathan Sugeethkumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   //************** OUTLET topview and bottomview
    
    @IBOutlet weak var topview: UIStackView!
    
    @IBOutlet weak var bottomView: UIStackView!
    
    //************* OUTLET Button choose layout
    
    @IBOutlet weak var layout1x2: UIButton!
    
    @IBOutlet weak var layout2x1: UIButton!
    
    @IBOutlet weak var layout2x2: UIButton!
    
    let selected = UIImage(named: "Selected")
    let layouts1 = UIImage(named: "Layout 1")
    let layouts2 = UIImage(named: "Layout 2")
    let layouts3 = UIImage(named: "Layout 3")
    
    // OUTLET label swipe
    
    @IBOutlet weak var swipeLabel: UILabel!
    
    // instance of Layout
    
    let layout = Layout()
    
    //selector of buttons
    //Layout1x2
    @objc func buttonLayoutpressed(sender: UIButton){
        print("pressed 1")
    }
    @objc func button2Layoutpressed(sender: UIButton){
        print("pressed 2")
    }
    @objc func button3Layoutpressed(sender: UIButton){
        print("pressed 3")
    }
    
    //Layout2x1
    @objc func buttonLayout2x1pressed(sender: UIButton){
        print("pressed 1 2x1")
    }
    @objc func button2Layout2x1pressed(sender: UIButton){
        print("pressed 2 2x1")
    }
    @objc func button3Layout2x1pressed(sender: UIButton){
        print("pressed 3 2x1")
    }
    
    //Layout2x2
    @objc func buttonLayout2x2pressed(sender: UIButton){
        print("pressed 1 2x2")
    }
    @objc func button2Layout2x2pressed(sender: UIButton){
        print("pressed 2 2x2")
    }
    @objc func button3Layout2x2pressed(sender: UIButton){
        print("pressed 3 2x2")
    }
    @objc func button4Layout2x2pressed(sender: UIButton){
        print("pressed 4 2x2")
    }
 
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        layout2()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func layout1() {

        //Create Button 1
        let button = UIButton(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
        button.backgroundColor = UIColor.white
        let image = UIImage(named: "Combined Shape")
        button.setImage(image , for: .normal)
        button.addTarget(self, action: #selector(self.buttonLayoutpressed), for: UIControlEvents.touchUpInside)
        
        //Create Button 2
        let button2 = UIButton(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
        button2.backgroundColor = UIColor.white
        let image2 = UIImage(named: "Combined Shape")
        button2.setImage(image2 , for: .normal)
        button2.addTarget(self, action: #selector(self.button2Layoutpressed), for: UIControlEvents.touchUpInside)
        
        //Create Button 3
        let button3 = UIButton(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
        let image3 = UIImage(named: "Combined Shape")
        button3.backgroundColor = UIColor.white
        button3.setImage(image3 , for: .normal)
        button3.addTarget(self, action: #selector(self.button3Layoutpressed), for: UIControlEvents.touchUpInside)
        
        //Remove all subview and add buttons
        resetViews()
        topview.addArrangedSubview(button)
        bottomView.addArrangedSubview(button2)
        bottomView.addArrangedSubview(button3)
        
        //selected
        
        layout1x2.setImage(selected, for: .normal)
        layout1x2.setBackgroundImage(layouts1, for: .normal)
        layout2x1.setImage(layouts2, for: .normal)
        layout2x2.setImage(layouts3, for: .normal)
    }
    
    @IBAction func layout2() {
        
        //Create Button 1
        let button = UIButton(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
        button.backgroundColor = UIColor.white
        let image = UIImage(named: "Combined Shape")
        button.setImage(image , for: .normal)
        button.addTarget(self, action: #selector(self.buttonLayout2x1pressed), for: UIControlEvents.touchUpInside)
        
        //Create Button 2
        let button2 = UIButton(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
        button2.backgroundColor = UIColor.white
        let image2 = UIImage(named: "Combined Shape")
        button2.setImage(image2 , for: .normal)
        button2.addTarget(self, action: #selector(self.button2Layout2x1pressed), for: UIControlEvents.touchUpInside)
        
        //Create Button 3
        let button3 = UIButton(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
        let image3 = UIImage(named: "Combined Shape")
        button3.backgroundColor = UIColor.white
        button3.setImage(image3 , for: .normal)
        button3.addTarget(self, action: #selector(self.button3Layout2x1pressed), for: UIControlEvents.touchUpInside)
        
        //Remove all subview and add buttons
        resetViews()
        topview.addArrangedSubview(button)
        topview.addArrangedSubview(button2)
        bottomView.addArrangedSubview(button3)
        
        //selected
        
        layout1x2.setImage(layouts1, for: .normal)
        layout2x1.setImage(selected, for: .normal)
        layout2x1.setBackgroundImage(layouts2, for: .normal)
        layout2x2.setImage(layouts3, for: .normal)
    }
   
    @IBAction func layout3() {
       
        //Create Button 1
        let button = UIButton(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
        button.backgroundColor = UIColor.white
        let image = UIImage(named: "Combined Shape")
        button.setImage(image , for: .normal)
        button.addTarget(self, action: #selector(self.buttonLayout2x2pressed), for: UIControlEvents.touchUpInside)
        
       
        
        //Create Button 2
        let button2 = UIButton(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
        button2.backgroundColor = UIColor.white
        let image2 = UIImage(named: "Combined Shape")
        button2.setImage(image2 , for: .normal)
        button2.addTarget(self, action: #selector(self.button2Layout2x2pressed), for: UIControlEvents.touchUpInside)
        
        //Create Button 3
        let button3 = UIButton(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
        let image3 = UIImage(named: "Combined Shape")
        button3.backgroundColor = UIColor.white
        button3.setImage(image3 , for: .normal)
        button3.addTarget(self, action: #selector(self.button3Layout2x2pressed), for: UIControlEvents.touchUpInside)
        
        //Create Button 4
        let button4 = UIButton(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
        button4.backgroundColor = UIColor.white
        let image4 = UIImage(named: "Combined Shape")
        button4.setImage(image4 , for: .normal)
        button4.addTarget(self, action: #selector(self.button4Layout2x2pressed), for: UIControlEvents.touchUpInside)
        
        //Remove all subview and add buttons
        resetViews()
        topview.addArrangedSubview(button)
        topview.addArrangedSubview(button2)
        bottomView.addArrangedSubview(button3)
        bottomView.addArrangedSubview(button4)
        
        //Selected
        layout1x2.setImage(layouts1, for: .normal)
        layout2x1.setImage(layouts2, for: .normal)
        layout2x2.setImage(selected, for: .normal)
        layout2x2.setBackgroundImage(layouts3, for: .normal)
        
    }
    
  
 
    func resetViews () {
        for view in topview.arrangedSubviews {
            view.removeFromSuperview()
        }
        for view in bottomView.arrangedSubviews {
            view.removeFromSuperview()
        }
    }
    
    func refreshLayoutView() {
        // mettre a jour ta vue
        var imageToShowInSquare = layout.images
        // Placer les images dans les stackview avec les bons UIButton dans les bon Stackview
        //myButtoncurrentImage! = imageToShowInSquare[0][0]
        //myButton.currentImage! = imageToShowInSquare[0][1]
       // myButton.currentImage! = imageToShowInSquare[1][0]
        //myButton.currentImage! = imageToShowInSquare[1][1]
        }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        if UIDevice.current.orientation.isLandscape {
            print("Landscape")
            swipeLabel.text = "Swipe left to share"
            
        } else {
            print("Portrait")
            swipeLabel.text = "Swipe up to share"
        }
    }
    
}

