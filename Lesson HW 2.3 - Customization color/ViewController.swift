//
//  ViewController.swift
//  Lesson HW 2.3 - Customization color
//
//  Created by user246073 on 9/4/24.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var colorAreaView: UIView!
    
    @IBOutlet var redColorLabelValue: UILabel!
    @IBOutlet var greenColorLabelValue: UILabel!
    @IBOutlet var blueColorLabelValue: UILabel!

    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        colorAreaView.layer.cornerRadius = 10
                
        redSliderAction(redSlider)
        greenSliderAction(greenSlider)
        blueSliderAction(blueSlider)
        
      }

    // MARK: - IB Actions
    @IBAction func redSliderAction(_ sender: UISlider) {
        redColorLabelValue.text = String(format: "%.2f", redSlider.value)
        updateColorAreaView()
    }
    
    @IBAction func greenSliderAction(_ sender: UISlider) {
        greenColorLabelValue.text = String(format: "%.2f", greenSlider.value)
        updateColorAreaView()
        
    }
    
    @IBAction func blueSliderAction(_ sender: UISlider) {
        blueColorLabelValue.text = String(format: "%.2f", blueSlider.value)
        updateColorAreaView()
    }

    // MARK: - Private Methods
    private func updateColorAreaView() {
            colorAreaView.backgroundColor = UIColor(
                red: CGFloat(redSlider.value),
                green: CGFloat(greenSlider.value),
                blue: CGFloat(blueSlider.value),
                alpha: 1.0
            )
        }
}




