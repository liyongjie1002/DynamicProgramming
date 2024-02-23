//
//  ViewController.swift
//  DynamicProgramming
//
//  Created by 国富集团赵 on 2024/2/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: 使用动态规划解决n阶楼梯问题
    @IBAction func staircase() {
        
        // 测试
        let n = 5
        let ways = climbStairs(n)
        print("到达第 \(n) 阶楼梯的不同走法有 \(ways) 种")
    }
    
    func climbStairs(_ n: Int) -> Int {
        if n <= 2 {
            return n
        }
        
        var dp = [Int](repeating: 0, count: n + 1)
        dp[1] = 1
        dp[2] = 2
        
        for i in 3...n {
            dp[i] = dp[i - 1] + dp[i - 2]
        }
        
        return dp[n]
    }

    //MARK: 使用动态规划解决斐波那契数列问题
    @IBAction func fib() {
        // 测试
        let n = 10
        let result = fibonacciDP(n)
        print("斐波那契数列的第 \(n) 个数字是 \(result)")

    }
    
    func fibonacciDP(_ n: Int) -> Int {
        if n <= 1 {
            return n
        }
        
        var fib = [Int](repeating: 0, count: n + 1)
        fib[1] = 1
        
        for i in 2...n {
            fib[i] = fib[i - 1] + fib[i - 2]
        }
        
        return fib[n]
    }

}

