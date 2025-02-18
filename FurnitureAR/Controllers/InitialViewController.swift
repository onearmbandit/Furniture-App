//
//  InitialViewController.swift
//  FurnitureAR
//
//  Created by akshay patil on 18/01/21.
//  Copyright © 2021 akshay patil. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    @IBOutlet weak var descriptionLabel2: UILabel!
    @IBOutlet weak var descriptionLabel1: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var getStartButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.addInterlineSpacing()
        descriptionLabel1.addInterlineSpacing()
        descriptionLabel2.addInterlineSpacing()
        getStartButton.setCornerRadius(radius: 18)
    }
    @IBAction func getStartButtonClicked(_ sender: Any) {
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            appDelegate.setRootAsMainViewController()
        }
    }
}

private extension UILabel {

    // MARK: - spacingValue is spacing that you need
    func addInterlineSpacing(spacingValue: CGFloat = 4) {

        // MARK: - Check if there's any text
        guard let textString = text else { return }

        // MARK: - Create "NSMutableAttributedString" with your text
        let attributedString = NSMutableAttributedString(string: textString)

        // MARK: - Create instance of "NSMutableParagraphStyle"
        let paragraphStyle = NSMutableParagraphStyle()

        // MARK: - Actually adding spacing we need to ParagraphStyle
        paragraphStyle.lineSpacing = spacingValue

        // MARK: - Adding ParagraphStyle to your attributed String
        attributedString.addAttribute(
            .paragraphStyle,
            value: paragraphStyle,
            range: NSRange(location: 0, length: attributedString.length
        ))

        // MARK: - Assign string that you've modified to current attributed Text
        attributedText = attributedString
    }

}
