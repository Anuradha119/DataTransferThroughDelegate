//
//  SecondViewController.swift
//  DataTransferThroughDelegate
//
//  Created by Marni Anuradha on 11/18/19.
//  Copyright © 2019 Marni Anuradha. All rights reserved.
//

import UIKit

protocol TransferData
{
    func passingData(values:[String])
}



class SecondViewController: UIViewController {
    var delegate:TransferData!
    
    @IBOutlet weak var firstNameTF: UITextField!
    
    @IBOutlet weak var lastNameTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSubmitBtnTap(_ sender: UIButton) {
        var name = [String]()
        name.append(firstNameTF.text!)
        name.append(lastNameTF.text!)
        delegate.passingData(values: name)
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
