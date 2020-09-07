//
//  ViewController.swift
//  UISlider
//
//  Created by ivk on 03/09/2020.
//  Copyright © 2020 irr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let colors: [UIColor] = [
        // These colors are
        .black,
        .darkGray,
        .lightGray,
        .white,
        .gray,
        .red,
        .green,
        .blue,
        .cyan,
        .yellow,
        .magenta,
        .orange,
        .purple,
        .brown,
        .clear
    ]
    var UISliderConnection : UISlider!
    @IBOutlet weak var slideThumbColor: UISlider!
    @IBOutlet weak var slideBgroundColor: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBgroundColor(_ sender: Any) {
        var color : Int
        UISliderConnection = sender as? UISlider
        if (UISliderConnection.tag == 0){
            color = Int(slideBgroundColor.value)
            print ("backgroundColor = \(color)")
            self.view.backgroundColor = colors[color]
        }else{
            color = 14 - (Int(slideThumbColor.value))
            print ("slideBgroundColor.thumbTintColor = \(color)")
            slideBgroundColor.thumbTintColor = colors[color]
        }


    }
    
}

