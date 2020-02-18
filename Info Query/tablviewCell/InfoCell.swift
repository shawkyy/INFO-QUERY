//
//  InfoCell.swift
//  Info Query
//
//  Created by abdallah shawky  on 2/17/20.
//  Copyright © 2020 abdallah shawky . All rights reserved.
//

import UIKit

class InfoCell: UITableViewCell {
    @IBOutlet weak var processOwnerName: UILabel!
    @IBOutlet weak var receivingDate: UILabel!
    @IBOutlet weak var recommenderName: UILabel!
    @IBOutlet weak var processOwnerMobile: UILabel!
    @IBOutlet weak var processName: UILabel!
    @IBOutlet weak var delegateName: UILabel!
    @IBOutlet weak var accomplishmentDate: UILabel!
    @IBOutlet weak var processStatus: UILabel!
    @IBOutlet weak var processDepartment: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(){
    }
    
}
