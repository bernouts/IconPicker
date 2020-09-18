//
//  ViewController.swift
//  IconPicker
//
//  Created by Brenden Smith on 9/18/20.
//  Copyright © 2020 Brenden Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var iconImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let iconPickerViewController = segue.destination as? IconPickerViewController {
            iconPickerViewController.delegate = self
        }
    }
}


extension ViewController: IconPickerViewControllerDelegate {
    func iconPickerButtonTapped(image: UIImage?) {
        iconImageView.image = image
    }
}
