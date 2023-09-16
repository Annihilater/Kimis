//
//  NoteCell+Progress.swift
//  Kimis
//
//  Created by Lakr Aream on 2022/11/18.
//

import UIKit

extension NoteCell {
    class Progress: NoteCell {
        let indicator = UIActivityIndicatorView()

        override var canBecomeFocused: Bool { false }

        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            container.addSubview(indicator)
        }

        override func layoutSubviews() {
            super.layoutSubviews()
            indicator.startAnimating()
            let bounds = container.bounds
            let size = indicator.intrinsicContentSize
            indicator.frame = CGRect(
                x: (bounds.width - size.width) / 2,
                y: (bounds.height - size.height) / 2,
                width: size.width,
                height: size.height
            )
        }
    }
}
