//
//  PartyCell.swift
//  Party Rock App
//
//  Created by Matthew J. Perkins on 1/6/17.
//  Copyright © 2017 Matthew J. Perkins. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoTitle: UILabel!
    
    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        
        let url = URL(string: partyRock.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
    //handle the error
    }
}
}
}
