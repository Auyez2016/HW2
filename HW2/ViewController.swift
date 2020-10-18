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
        sliderActivity(color: &redColor, slider: redSlider, sliderNumbers: &redNumbers)
        coloring()
    }
    
    @IBAction func greenSliderAction() {
        sliderActivity(color: &greenColor, slider: greenSlider, sliderNumbers: &greenNumbers)
        coloring()
    }
    
    @IBAction func blueSliderAction() {
        sliderActivity(color: &blueColor, slider: blueSlider, sliderNumbers: &blueNumbers)
        coloring()
    }
    
    private func coloring() {
        viewColors.backgroundColor = UIColor(displayP3Red: redColor, green: greenColor, blue: blueColor, alpha: 1)
    }
    
    private func sliderActivity( color: inout CGFloat, slider: UISlider, sliderNumbers: inout UILabel) {
        color = CGFloat(slider.value)
        sliderNumbers.text = String(format: "%.2f", slider.value)
    }
}


