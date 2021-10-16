//
//  testTableViewCell.swift
//  Swift_Training
//
//  Created by Taku Funakoshi on 2021/10/16.
//

import UIKit

class testTableViewCell: UITableViewCell {

    @IBOutlet weak var labelR: UILabel!
    @IBOutlet weak var labelL: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
