//
//  PageModel.swift
//  PinchAppMasterclassSwiftUIExample
//
//  Created by Erge Gevher Akova on 15.09.2022.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-\(imageName)"
    }
}
