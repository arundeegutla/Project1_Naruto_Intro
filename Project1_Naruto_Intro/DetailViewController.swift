//
//  DetailViewController.swift
//  Project1_Naruto_Intro
//
//  Created by Arun Deegutla on 2/28/23.
//

import UIKit

class DetailViewController: UIViewController {
    var pageInfo: PageInfo?
    
    
    
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var infoText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        // Do any additional setup after loading the view.
        if let this_info = pageInfo {
            bgImage.image = this_info.image
            infoText.lineBreakMode = .byWordWrapping
            infoText.text = this_info.text
        }
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
