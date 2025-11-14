//
//  121. Best Time to Buy and Sell Stock.swift
//  
//
//  Created by rognavar on 8/20/25.
//

//You are given an array prices where prices[i] is the price of a given stock on the ith day.
//
//You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

//Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

public class Problem_121: Runner {
    
    public init() {}
    
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else { return 0 }
        var minPrice = prices[0]
        var maxPrice = prices[0]
        var maxProfit = maxPrice - minPrice
        for index in 1..<prices.count {
            let currentPrice = prices[index]
            if currentPrice < minPrice {
                minPrice = currentPrice
                maxPrice = minPrice
            }
            if currentPrice > maxPrice {
                maxPrice = currentPrice
            }
            let possibleNewMaxPrice = maxPrice - minPrice
            if maxProfit < possibleNewMaxPrice {
                maxProfit = possibleNewMaxPrice
            }
        }
        return maxProfit
    }
    
    func maxProfitTwo(_ prices: [Int]) -> Int {
        var minPrice = Int.max
        var maxProfit = 0
        
        for price in prices {
            maxProfit = max(maxProfit, price - minPrice)
            minPrice = min(minPrice, price)
        }
        return maxProfit
    }
    
    public func runCode() {
        print("121. Best time to Buy and Sell Stock")
        print(maxProfit([7,1,5,3,6,4]) == 5 ? "Passed" : "Failed")
        
        print("version 2")
        print(maxProfitTwo([7,1,5,3,6,4]) == 5 ? "Passed" : "Failed")
    }
}
