//
//  ZJRecommendCate.swift
//  DouYuLive
//
//  Created by 邓志坚 on 2018/8/5.
//  Copyright © 2018年 邓志坚. All rights reserved.
//

import UIKit

struct ZJRecommendCate : Decodable {
    
    var total : String?
    var cate2_list : [ZJCategoryList] = Array<ZJCategoryList>()
}

