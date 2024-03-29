//
//  UserTableViewCell.swift
//  clock
//
//  Created by Paul on 16/12/2015.
//  Copyright © 2015 paulboiseau. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    static let identifier = "UserSearchCell"

    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var avatarImage: UIImageView!
    
    func toggleAccessor() {
        if self.accessoryType == .Checkmark {
            self.accessoryType = .None
        } else {
            self.accessoryType = .Checkmark
        }
    }
    
}
