//
//  ViewController.swift
//  ColoresSlider
//
//  Created by Max Alva on 13/05/18.
//  Copyright © 2018 Max Alva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    var red: Float = 0
    var green: Float = 0
    var blue: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func redAction(_ sender: UISlider) {
        self.red = sender.value
        self.changeColor(red: CGFloat(self.red), green: CGFloat(self.green), blue: CGFloat(self.blue))
        UserDefaults.standard.set(self.red, forKey: "red")
    }
    
    @IBAction func greenAction(_ sender: UISlider) {
        self.green = sender.value
        self.changeColor(red: CGFloat(self.red), green: CGFloat(self.green), blue: CGFloat(self.blue))
        UserDefaults.standard.set(self.green, forKey: "green")
    }
    
    @IBAction func blueAction(_ sender: UISlider) {
        self.blue = sender.value
        self.changeColor(red: CGFloat(self.red), green: CGFloat(self.green), blue: CGFloat(self.blue))
        UserDefaults.standard.set(self.blue, forKey: "blue")
    }
    
    func changeColor(red: CGFloat, green: CGFloat, blue: CGFloat) {
        view.backgroundColor = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
    }

}

