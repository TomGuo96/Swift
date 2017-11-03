//: Playground - noun: a place where people can play

import Cocoa

/**************
 * 4.1 初识运算符
 **************/

/* 4.1.1 赋值运算符 */

var str = "Hello, playground"
var count = 5
var group = (1, 2, "12")
var bol = true

/* 4.1.2 基本算术运算符 */

1 + 2
3 - 1
2 * 2
4 / 2
4 % 3

/* 4.1.3 基本逻辑运算符 */

true && false
false || false

/* 4.1.4 比较运算符 */

1 == 2
1 < 2
1 >= 2

var tp1 = (3, 4, "5")
var tp2 = (2, 6, "9")
tp1 < tp2

/* 4.1.5 条件运算符 */

var m = 3
var n = 6
print(m > n ? "m > n" : "m <= n")

/******************************
* 4.2 Swift语言中两种特殊的额运算符
******************************/

/* 4.2.1 空合并运算符 */

var q:Int? = 8
var value:Int
if q != nil {
	value = q!
} else {
	value = 0
}

// 空合并运算符
value = q ?? 0

/* 4.2.2 区间运算符 */

var range1 = 0...10
var range2 = 0..<10

// 8是否在范围中
print(range1 ~= 8)

for index in 0...3 {
	print(index)
}
for index in 0..<3 {
	print(index)
}

/*************
 * 4.3 循环结构
 *************/

/* 4.3.1 for-in循环结构 */

