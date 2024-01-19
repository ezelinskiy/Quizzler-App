//
//  AnswerButton.swift
//  Quizzler App
//
//  Created by Evgeniy Zelinskiy on 18.01.2024.
//

import Foundation
import UIKit

class AnswerButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 20.0
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.layer.cornerRadius = 20.0
    }
}
