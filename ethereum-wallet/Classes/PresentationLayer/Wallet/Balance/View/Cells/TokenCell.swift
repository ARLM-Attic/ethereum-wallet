//
//  TokenCell.swift
//  ethereum-wallet
//
//  Created by Artur Guseinov on 14/03/2018.
//  Copyright © 2018 Artur Guseinov. All rights reserved.
//

import UIKit
import Kingfisher

class TokenCell: UITableViewCell {
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var symbolLabel: UILabel!
  @IBOutlet weak var iconImageView: UIImageView!
  @IBOutlet weak var balanceLabel: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
  func configure(with token: Token) {
    titleLabel.text = token.balance.name
    symbolLabel.text = token.balance.iso
    balanceLabel.text = token.balance.amount
    
    let placeholder = token.placeholder(with: iconImageView.bounds.size)
    iconImageView.kf.setImage(with: token.iconUrl, placeholder: placeholder)
    iconImageView.tintColor = token.color
  }
  
}
