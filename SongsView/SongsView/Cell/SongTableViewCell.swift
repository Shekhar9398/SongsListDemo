//
//  SongTableViewCell.swift
//  SongsView
//
//  Created by Shraddha Manwar on 30/06/22.
//

import UIKit

class SongTableViewCell: UITableViewCell {

    @IBOutlet weak var cellButton: UIButton!
    @IBOutlet weak var cellLabel: UILabel!
    
    
        override func awakeFromNib() {
        super.awakeFromNib()
                        
        // Initialization code
//        cellButton.isHighlighted = true
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
            }
    
    @IBAction func cellButtonPressed(_ sender: UIButton) {
        cellButton.isSelected = !cellButton.isSelected
        
    }
    }
