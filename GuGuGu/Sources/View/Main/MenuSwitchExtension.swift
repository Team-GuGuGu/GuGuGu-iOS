//
//  MenuSwitchExtesion.swift
//  GuGuGu
//
//  Created by dgsw8th16 on 9/25/23.
//

import SwiftUI

extension Shape {
    public func switchShadow() -> some View {
        if #available(iOS 16.0, *) {
            return self.fill(
                .shadow(.inner(color: .black, radius: 3, x: 5, y: 5))
                .opacity(25/100)
            )
        } else {
            return self.fill(
                Color.white
            )
        }
    }
}
