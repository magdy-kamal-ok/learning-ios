//
//  TagDataSource.swift
//  Photorama
//
//  Created by WON on 12/08/2018.
//  Copyright © 2018 trilliwon. All rights reserved.
//

import UIKit
import CoreData

class TagDataSource: NSObject, UITableViewDataSource {
    var tags: [Tag] = []

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tags.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        let tag = tags[indexPath.row]
        cell.textLabel?.text = tag.name
        cell.accessibilityHint = "Double tap to toggle selected"
        return cell
    }
}
