//
//  ViewController.swift
//  HW2
//
//  Created by Auyez on 10/18/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var viewColors: UIView!
    
    @IBOutlet var redNumbers: UILabel!
    @IBOutlet var greenNumbers: UILabel!
    @IBOutlet var blueNumbers: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    private var redColor: CGFloat = 0
    private var greenColor: CGFloat = 0
    private var blueColor: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func redSliderAction() {
        redColor = CGFloat(redSlider.value)
        redNumbers.text = String(format: "%.2f", redSlider.value)
        coloring()
    }
    
    @IBAction func greenSliderAction() {
        greenColor = CGFloat(greenSlider.value)
        greenNumbers.text = String(format: "%.2f", greenSlider.value)
        coloring()
    }
    
    @IBAction func blueSliderAction() {
        blueColor = CGFloat(blueSlider.value)
        blueNumbers.text = String(format: "%.2f", blueSlider.value)
        coloring()
    }
    
    private func coloring() {
        viewColors.backgroundColor = UIColor(displayP3Red: redColor, green: greenColor, blue: blueColor, alpha: 1)
    }
    
}


