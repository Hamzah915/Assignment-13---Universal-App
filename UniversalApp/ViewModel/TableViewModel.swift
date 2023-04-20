//
//  TableViewModel.swift
//  UniversalApp
//
//  Created by Hamzah Azam on 19/04/2023.
//

import Foundation

protocol NetworkProtocol{
    func getDataFromAPIUsingClosure<T:Decodable>(with urlString:String, handler: @escaping (Result <T,Error>) -> Void)
    
}

class TableViewModel{
    
    var item : Item?
    var reloadMyData:(() -> Void)?

    
    let anyManager: NetworkProtocol
    init(anyManager: NetworkProtocol) {
        self.anyManager = anyManager
    }


    func getDataUsingClosures(url:String){
        anyManager.getDataFromAPIUsingClosure (with:url){ (result: Result<Item,Error>) in
            switch result {
            case .success(let prod):
                self.item = prod
                self.reloadMyData?()
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
}


