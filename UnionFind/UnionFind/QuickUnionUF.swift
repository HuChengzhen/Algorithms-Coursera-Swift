//
//  QuickUnionUF.swift
//  UnionFind
//
//  Created by 胡诚真 on 2018/9/1.
//  Copyright © 2018 huchengzhen. All rights reserved.
//

import Foundation

class QuickUnionUF {
    var id: [Int]
    
    init(N: Int) {
        id = [Int](repeating: 0, count: N)
        
        for i in 0..<N {
            id[i] = i
        }
    }
    
    private func root(i: Int) -> Int {
        var i = i
        while i != id[i] {
            i = id[i]
        }
        return i
    }
    
    public func connected(p: Int, q: Int) -> Bool {
        return root(i: p) == root(i: q)
    }
    
    public func union(p: Int, q: Int) {
        let i = root(i: p)
        let j = root(i: q)
        id[i] = j
    }
}
