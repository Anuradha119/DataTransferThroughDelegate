//
//  ViewController.swift
//  DataTransferThroughDelegate
//
//  Created by Marni Anuradha on 11/18/19.
//  Copyright © 2019 Marni Anuradha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, TransferData {
 
    var names = [["ddsf","dsrtete"]]//[[String]]()
    var xpos = 30
    var ypos = 120
    var allObjects = [UILabel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func passingData(values: [String])
    {
        names.append(values)
    }
    
    @objc func navigateButtonEH()
    {
        let targetVC = self.storyboard?.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
        
        targetVC.delegate = self
        
        self.present(targetVC, animated: true, completion: nil)
    }

    override func viewWillAppear(_ animated: Bool)
    {
        
        xpos = 30
        ypos = 120
        for x in allObjects
        {
            x.removeFromSuperview()
        }
        createUI()
    }
    
    func createUI()
    {
        for x in names
        {
            var i = 0
            
            for m in x
            {
                
                let label = UILabel()
                label.frame = CGRect(x: xpos, y: ypos, width: 150, height: 40)
                allObjects.append(label)
                
                if(i == 0)
                {
                    
                    label.backgroundColor = .cyan
                    label.text = m
                    view.addSubview(label)
                    
                    i += 1
                    xpos += 200
                    
                }
                else
                {
                    label.backgroundColor = .purple
                    label.text = m
                    view.addSubview(label)
                    xpos = 30
                    ypos += 70
                }

            }
        }
    }

    @IBAction func onAddBtnTap(_ sender: UIButton) {
        
        let targetVC = self.storyboard?.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
        
        targetVC.delegate = self
        
        self.present(targetVC, animated: true, completion: nil)
    }

}

