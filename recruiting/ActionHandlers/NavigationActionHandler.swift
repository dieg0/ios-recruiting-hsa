//
//  NavegationActionHandler.swift
//  recruiting
//
//  Created by Diego Vargas on 4/20/19.
//  Copyright © 2019 concrete. All rights reserved.
//

import Foundation

class NavigationActionHandler: BaseActionHandler{
    
    override func run() {
        
        guard let navData = self.data as? NavigationAction else { return }
        
        switch navData.flow {
        case .pop:
            self.presenter.navigator.pop()
        case .popRoot:
            self.presenter.navigator.popToRoot()
        case .push:
            self.presenter.navigator.pushView(route: navData.route)
        }
    }
}
