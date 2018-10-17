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
    
    //************* Button
    
    let layoutManager = Layout()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func layout1() {
        //Create Button 1
        let button = UIButton(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
        button.backgroundColor = UIColor.white
        let image = UIImage(named: "Combined Shape")
        button.setImage(image , for: .normal)
        //button.addTarget(self, action: "<#T##Selector#>", for: UIControlEvents.touchUpInside)
        //Create Button 2
        let button2 = UIButton(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
        button2.backgroundColor = UIColor.white
        let image2 = UIImage(named: "Combined Shape")
        button2.setImage(image2 , for: .normal)
        //button2.addTarget(self, action: "<#T##Selector#>", for: UIControlEvents.touchUpInside)
        //Create Button 3
        let button3 = UIButton(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
        let image3 = UIImage(named: "Combined Shape")
        button3.backgroundColor = UIColor.white
        button3.setImage(image3 , for: .normal)
        //button.addTarget(self, action: "<#T##Selector#>", for: UIControlEvents.touchUpInside)
        
       

        
        
        
        resetViews()
        topview.addArrangedSubview(button)
        topview.addArrangedSubview(button2)
        bottomView.addArrangedSubview(button3)
        topview.translatesAutoresizingMaskIntoConstraints = false
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        
        let widtConstraint = NSLayoutConstraint(
            item: button,
            attribute: NSLayoutAttribute.width,
            relatedBy: NSLayoutRelation.equal,
            toItem: button2,
            attribute: NSLayoutAttribute.width,
            multiplier: 1.0,
            constant: 0
        )
        topview.addConstraint(widtConstraint)
        
    }
    
    @IBAction func layout2() {
        let button = UIButton(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
        button.titleLabel?.text = "Genious Team"
        button.backgroundColor = UIColor.blue
        let button2 = UIButton(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
        button2.titleLabel?.text = "Genious Team"
        button2.backgroundColor = UIColor.red
        let button3 = UIButton(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
        button3.titleLabel?.text = "Genious Team"
        button3.backgroundColor = UIColor.yellow

        resetViews()
        /*topview.addArrangedSubview(button)
        bottomView.addArrangedSubview(button2)
        bottomView.addArrangedSubview(button3)
 */
       
       
    }
   /*
    @IBAction func layout3() {
        resetViews()
        topview.addArrangedSubview(myButton)
        topview.addArrangedSubview(myButton)
        bottomView.addArrangedSubview(myButton)
        bottomView.addArrangedSubview(myButton)
    }
 */
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
        var imageToShowInSquare = layoutManager.images
        // Placer les images dans les stackview avec les bons UIButton dans les bon Stackview
        //myButton.currentImage! = imageToShowInSquare[0][0]
        //myButton.currentImage! = imageToShowInSquare[0][1]
       // myButton.currentImage! = imageToShowInSquare[1][0]
        //myButton.currentImage! = imageToShowInSquare[1][1]
        }
    
  
    
    
    @IBAction func squareLeft() {
    }
    
    @IBAction func squareRight() {
    }
    
    @IBAction func rectangle1() {
    }
    
}

