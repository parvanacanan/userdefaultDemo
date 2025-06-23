//
//  ViewController.swift
//  userDefaultsDemo
//
//  Created by parvana on 21.06.25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
            backgroundImage.image = UIImage(named: "background") // Assets'e eklediğin foto
            backgroundImage.contentMode = .scaleAspectFill
            view.insertSubview(backgroundImage, at: 0)
        
        let nameStored = UserDefaults.standard.string(forKey: "name") ?? ""
            let emailStored = UserDefaults.standard.string(forKey: "email") ?? ""
            nameLabel.text = "Name: \(nameStored)"
            emailLabel.text = "Email: \(emailStored)"
        
        }
    

    
    @IBAction func saveClicked(_ sender: Any) {
        let name = nameText.text ?? ""
           let email = emailText.text ?? ""
           
            UserDefaults.standard.set(name, forKey: "name")
           UserDefaults.standard.set(email, forKey: "email")
           
            nameLabel.text = "Name: \(name)"
           emailLabel.text = "Email: \(email)"
        
       
    }
    
    @IBAction func deleteClicked(_ sender: Any) {
        let newName = nameLabel.text
        let newEmail = emailLabel.text
        if ( newName ) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name: "
        }
        if ( newEmail ) != nil {
            UserDefaults.standard.removeObject(forKey: "email")
            emailLabel.text = "Email: "
        }
    }
    
    
    
}


