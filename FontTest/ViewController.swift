//
//  ViewController.swift
//  FontTest
//
//  Created by hursd2f on 2019-10-25.
//  Copyright © 2019 hursd2f. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var testTitle: UILabel!
    @IBOutlet var testContent: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for family in UIFont.familyNames.sorted() {
            let names = UIFont.fontNames(forFamilyName: family)
            print("Family: \(family) Font names: \(names)")
        }
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        
        guard let customFont = UIFont(name: "NotoSansMyanmar-Light", size: UIFont.labelFontSize) else {
            fatalError("""
                Failed to load the "Roboto-Light" font.
                """
            )
        }
        testTitle.font = UIFontMetrics(forTextStyle: .headline).scaledFont(for: customFont)
        testTitle.adjustsFontForContentSizeCategory = true
        
        testContent.font = UIFontMetrics(forTextStyle: .headline).scaledFont(for: customFont)
        testContent.adjustsFontForContentSizeCategory = true
    }
}

