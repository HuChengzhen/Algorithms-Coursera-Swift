//
//  QuickFind.swift
//  UnionFind
//
//  Created by 胡诚真 on 2018/9/1.
//  Copyright © 2018 huchengzhen. All rights reserved.
//

import Foundation

open class QuickFindUF {
    var id: [Int]

    init(n: Int) {
        id = [Int](repeating: 0, count: n)
        for i in 0..<n {
            id[i] = i
        }
    }
    
    func connected(p: Int, q: Int) -> Bool {
        return id[p] == id[q]
    }
    
    func union(p: Int, q: Int) {
        let pid = id[p]
        let qid = id[q]
        
        for i in 0..<id.count {
            if id[i] == pid {
                id[i] = qid
            }
        }
        
    }
    
}
