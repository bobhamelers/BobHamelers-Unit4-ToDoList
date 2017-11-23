//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Bob Hamelers on 23/11/2017.
//  Copyright © 2017 Bob Hamelers. All rights reserved.
//

import UIKit
@objc protocol ToDoCellDelegate: class {
    func checkmarkTapped(sender: ToDoCell)
}
class ToDoCell: UITableViewCell {

    var delegate: ToDoCellDelegate?
    @IBOutlet weak var isCompleteButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBAction func completeButtonTapped(_ sender: Any) {
        delegate?.checkmarkTapped(sender: self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
