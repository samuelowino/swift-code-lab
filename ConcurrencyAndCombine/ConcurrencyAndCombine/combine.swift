//
//  combine.swift
//  ConcurrencyAndCombine
//
//  Created by Samuel Owino on 15/12/2021.
//

import Foundation

let range = (0...1000)

let rangePublisher = range.publisher

let cancellable = rangePublisher.sink(receiveCompletion: { result in
        print("Receive completion closure result \(result)")
    }, receiveValue: { value in
        print("Receive value closure: value \(value)")
    })

