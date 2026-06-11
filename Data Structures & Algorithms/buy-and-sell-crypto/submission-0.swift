class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.isEmpty {
            return -1
        }
        var buy = 0
        var sell = 1
        var profit = 0

        while(sell < prices.count) {
            if(prices[sell] > prices[buy]) {
                profit = max(profit, prices[sell] - prices[buy])
            } else {
                buy = sell
            }
            sell += 1
        }
        return profit
    }
}
