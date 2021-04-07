//
//  SelectLanguageViewController.swift
//  EXIT RIGA
//
//  Created by vishal_singh on 06/04/21.
//

import UIKit

class SelectLanguageViewController: UIViewController {
   
    @IBOutlet weak var Topview: UIView!
    @IBOutlet weak var selectEnglish: UIImageView!
    @IBOutlet weak var buttonLatvia: UIButton!
    @IBOutlet weak var buttonEnglish: UIButton!
    @IBOutlet weak var selectLatvia: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        selectLatvia.isHidden = true
        Topview.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMaxYCorner]
        Topview.layer.masksToBounds = true
        Topview.layer.cornerRadius = 22
    }
    @IBAction func selectBtn(_ sender: Any) {
        let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "tabbar") as! UIViewController

        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    @IBAction func englishBTN(_ sender: UIButton) {
        selectLatvia.isHidden = true
        selectEnglish.isHidden = false
    }
    

    @IBAction func latviaBtn(_ sender: UIButton) {
        selectLatvia.isHidden = false
        selectEnglish.isHidden = true
    }
}
