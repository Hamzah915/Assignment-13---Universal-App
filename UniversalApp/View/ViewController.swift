//
//  ViewController.swift
//  UniversalApp
//
//  Created by Hamzah Azam on 19/04/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func detailsScreenButton(_ sender: Any) {
    }
    @IBAction func tableViewButton(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let tableViewController = storyBoard.instantiateViewController(withIdentifier: "TableViewController")
        self.navigationController?.pushViewController(tableViewController, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

