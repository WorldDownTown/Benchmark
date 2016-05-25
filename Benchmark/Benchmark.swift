//
//  Benchmark.swift
//  Benchmark
//
//  Created by shoji on 2016/05/24.
//  Copyright © 2016年 com.shoji. All rights reserved.
//

import Foundation

public struct Benchmark {

    private let startTimeInterval: NSTimeInterval
    private let key: String
    private static var sharedInstance: Benchmark?

    public init(key: String) {
        startTimeInterval = NSDate().timeIntervalSinceReferenceDate
        self.key = key
    }

    public func finish() {
        let elapsed = NSDate().timeIntervalSinceReferenceDate - startTimeInterval
        let formatedElapsed = String(format: "%.5f", elapsed)
        print("\(key): \(formatedElapsed) sec.")
    }

    public static func start(key: String = "Benchmark") {
        sharedInstance = Benchmark(key: key)
    }

    public static func finish() {
        sharedInstance?.finish()
        sharedInstance = nil
    }

    public static func measure(key: String = "Benchmark", @noescape block: Void -> Void) {
        let benchmark = Benchmark(key: key)
        block()
        benchmark.finish()
    }
}

prefix operator ⏲ { }
public prefix func ⏲(@noescape handler: Void -> Void) {
    Benchmark.measure(block: handler)
}
