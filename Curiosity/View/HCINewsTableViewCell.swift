//
//  HCINewsTableViewCell.swift
//  Curiosity
//
//  Created by Vo1 on 28.04.18.
//  Copyright © 2018 InteractiveNewsExplorer. All rights reserved.
//

import UIKit

class HCINewsTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setup() {
        self.authorLabel.textColor = UIColor.init(red: 111/255.0, green: 111/255.0, blue: 111/255.0, alpha: 1.0)
        self.dateLabel.textColor = UIColor.init(red: 159/255.0, green: 159/255.0, blue: 159/255.0, alpha: 1.0)
    }
}
