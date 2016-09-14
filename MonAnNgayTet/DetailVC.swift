//
//  DetailVC.swift
//  MonAnNgayTet
//
//  Created by Hoàng Minh Thành on 9/12/16.
//  Copyright © 2016 Hoàng Minh Thành. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    var image:UIImage!
    var name:String!
    var info:String!
    @IBOutlet weak var nameMonAn: UILabel!
    @IBOutlet weak var imageMonAn: UIImageView!
    @IBOutlet weak var infoMonAn: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

            self.title = name
            nameMonAn.text = name
            imageMonAn.image = image
            infoMonAn.text = info
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
