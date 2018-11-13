//
//  ViewController.swift
//  Instagrid
//
//  Created by Vigneswaranathan Sugeethkumar on 09/08/2018.
//  Copyright © 2018 Vigneswaranathan Sugeethkumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UINavigationControllerDelegate, UIImagePickerControllerDelegate  {
   //************** OUTLET topview and bottomview
    
    @IBOutlet weak var topview: UIStackView!
    
    @IBOutlet weak var bottomView: UIStackView!
    
    //************* OUTLET Button choose layout
    
    @IBOutlet weak var layout1x2: UIButton!
    
    @IBOutlet weak var layout2x1: UIButton!
    
    @IBOutlet weak var layout2x2: UIButton!
    //MainLayout to share collage
    @IBOutlet weak var sharePhotos: UIView!
    
    //stockIndex
    var saveIndex: Int = 0
    
    //button
    func makeButton(ind: Int,img : UIImage) -> UIButton {
        let button = UIButton(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
        
        button.setImage(img, for: .normal)
        button.backgroundColor = .white
        switch ind {
            case 0:
                button.addTarget(self, action: #selector(self.buttonpressed), for: .touchUpInside)
            case 1:
                button.addTarget(self, action: #selector(self.button2pressed), for: .touchUpInside)
            case 2:
                button.addTarget(self, action: #selector(self.button3pressed), for: .touchUpInside)
            case 3:
                button.addTarget(self, action: #selector(self.button4pressed), for: .touchUpInside)
            
        default:
            break
        }
        return button
    }
    
    //Stock Images
    let image = UIImage(named: "Combined Shape")
    let selected = UIImage(named: "Selected")
    let layouts1 = UIImage(named: "Layout 1")
    let layouts2 = UIImage(named: "Layout 2")
    let layouts3 = UIImage(named: "Layout 3")
    
    // OUTLET label swipe
    
    @IBOutlet weak var swipeLabel: UILabel!
    
    // instance of Layout
    
    var layout = Layout()
    
    //Image picked
    var imagePicked: UIImage?
    
    //Access to PhotoLibrary
    func accessPhotoLibrary(index: Int) {
        let myPickerController = UIImagePickerController()
        myPickerController.delegate = self
        myPickerController.sourceType = .photoLibrary
        saveIndex = index
        present(myPickerController, animated: true)
    }
    
    //ImagePicker
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
    {
        imagePicked = (info[UIImagePickerControllerOriginalImage] as? UIImage)!
        layout.images[saveIndex] = imagePicked!
        //to instanly view the choosen image in the view
        refreshLayoutView()
        self.dismiss(animated: true, completion: nil)
    }
    
    //selector of buttons
    
    @objc func buttonpressed(sender: UIButton){
        //PhothoLibrary access
        accessPhotoLibrary(index: 0)
        
    }
    
    @objc func button2pressed(sender: UIButton){
        //PhothoLibrary access
        accessPhotoLibrary(index: 1)

    }
    @objc func button3pressed(sender: UIButton){
        //PhothoLibrary access
        accessPhotoLibrary(index: 2)
    }
    @objc func button4pressed(sender: UIButton){
        //PhothoLibrary access
        accessPhotoLibrary(index: 3)
    }
 
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addGesture(dir: .up)
        layout2()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Shake gesture recognizer
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            //current layout
            let currentLayout = layout.layout
            //button renew
            layout = .init()
            //refreshview in function of the current layout
            switch currentLayout {
            case .layout1x2:
                layout1()
            case .layout2x1:
                layout2()
            case .layout2x2:
                layout3()
            }
        }
    }
    
    
    @IBAction func layout1() {
        
        //Remove all subview and add buttons
        layout.layout = .layout1x2
        refreshLayoutView()
        
        
        //selected
        
        layout1x2.setImage(selected, for: .normal)
        layout1x2.setBackgroundImage(layouts1, for: .normal)
        layout2x1.setImage(layouts2, for: .normal)
        layout2x2.setImage(layouts3, for: .normal)
        
    }
    
    @IBAction func layout2() {
        
        //Remove all subview and add buttons
        layout.layout = .layout2x1
        refreshLayoutView()
        //selected
        
        layout1x2.setImage(layouts1, for: .normal)
        layout2x1.setImage(selected, for: .normal)
        layout2x1.setBackgroundImage(layouts2, for: .normal)
        layout2x2.setImage(layouts3, for: .normal)
    }
   
    @IBAction func layout3() {
        
        //Remove all subview and add buttons
        layout.layout = .layout2x2
        refreshLayoutView()
        //Selected
        layout1x2.setImage(layouts1, for: .normal)
        layout2x1.setImage(layouts2, for: .normal)
        layout2x2.setImage(selected, for: .normal)
        layout2x2.setBackgroundImage(layouts3, for: .normal)
    }
    
  
 //Delete all view in topview and bottomview
    func resetViews () {
        for view in topview.arrangedSubviews {
            view.removeFromSuperview()
        }
        for view in bottomView.arrangedSubviews {
            view.removeFromSuperview()
        }
    }
    
    func refreshLayoutView() {
        //initialisation
        var imageGrid = layout.imageGrid
        var index = 0
        //resetview and add selected images and buttons
        resetViews()
        for img in imageGrid[0]{
            topview.addArrangedSubview(makeButton(ind: index,img : img))
            index = index + 1
        }
        for img in imageGrid[1]{
            bottomView.addArrangedSubview(makeButton(ind: index,img : img))
            index = index + 1
        }
    }
    //add swipe gesture
    func addGesture(dir: UISwipeGestureRecognizerDirection){
        
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(self.sharePhoto))
        swipe.direction = dir
        self.view.addGestureRecognizer(swipe)
    }
    //remove all gesture from view
    func removeRecognizer(){
        for recognizer in self.view.gestureRecognizers ?? [] {
            self.view.removeGestureRecognizer(recognizer)
        }
    }
    //share photos
    @objc func sharePhoto(sender: UIGestureRecognizer) {
        let activityController = UIActivityViewController(activityItems: [imageWithView(view: sharePhotos)!], applicationActivities: nil)
        present(activityController,animated: true, completion: nil)
    }
    //mods when the phone orientation is different
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        //remove gesture
        removeRecognizer()
        //check if Device orientation is Landscape
        if UIDevice.current.orientation.isLandscape {
            swipeLabel.text = "Swipe left to share"
            addGesture(dir: .left)
        } else {
            swipeLabel.text = "Swipe up to share"
            addGesture(dir: .up)
            
        }
    }
    
    func imageWithView(view: UIView) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(view.bounds.size, view.isOpaque, 0.0)
        view.drawHierarchy(in: view.bounds, afterScreenUpdates: true)
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return img
    }
}
