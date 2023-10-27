//
//  CategoriesRepository.swift
//  ZirkonJewelery
//
//  Created by Muhammadali Yulbarsbekov on 17/05/22.
//

import UIKit
import Alamofire

class CategoriesRepository {
    static let shared = CategoriesRepository()
    func getCategories(compilation: @escaping(([CategoriesModel]) -> Void)) {
        let url = AppUrl()
        AF.request(url.baseUrl).responseDecodable(of: [CategoriesModel].self) { res in
            guard let data = res.value else { return }
            compilation(data)
        }
    }
}
