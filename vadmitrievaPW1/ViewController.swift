//
//  ViewController.swift
//  vadmitrievaPW1
//
//  Created by HSE  FKN on 17.09.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var views: [UIView]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for view in views {
            view.layer.cornerRadius = .random(in: 5...40)
        }
    }
    @IBAction func changeColorButtonPressed(_ sender: Any) {
        let button = sender as? UIButton
        button?.isEnabled = false
        var set = Set<UIColor>()
        while set.count < views.count {
            set.insert(
                UIColor(
                        red: .random(in: 0...1),
                        green: .random(in: 0...1),
                        blue: .random(in: 0...1),
                        alpha: 1)
            )
    }
        //for view in views {
        //UIView.animate(withDuration: 1, animations: {
        //    view.backgroundColor = set.popFirst()
        //})
    
        UIView.animate(withDuration: 2, animations: {
            for view in self.views {
                view.layer.cornerRadius = .random(in: 5...40)
                view.backgroundColor = set.popFirst()
            }
        }) {completion in
            button?.isEnabled = true
        }
}

}
