//
//  TableViewCell.swift
//  SwiftProtocol
//
//  Created by 季 雲 on 2017/10/14.
//  Copyright © 2017 Ericji. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell, LayerProtocol {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.selectWithBounce(select: selected, animated: true)
    }

}
