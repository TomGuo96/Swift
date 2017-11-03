//: Playground - noun: a place where people can play

import Cocoa

/*************
 * 3.4 集合类型
 *************/

/* 3.4.1 Array数组类型 */

// 创建数组
var array1:[Int];
var array2:Array<Int>
var array4 = Array<Float>()
var array5 = [1, 2, 3]
var array6 = Array(arrayLiteral: 4, 5, 6)

// 创建大量相同元素的数组
var arr = [String](repeating: "Hello", count: 10)

var array7 = array5 + array6

// 数组的增删改查操作
var array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
array.count
if array.isEmpty {
	print("array为空数组")
}
var a = array[0]
var subArray = array[0...3]
var b = array.first
var c = array.last
array[0] = 0
array[0...3] = [1, 2, 3, 4]
array.append(10)
array.append(contentsOf: [11, 12, 13])
array.insert(0, at: 0)
array.insert(contentsOf: [-2, -1], at: 0)
array.remove(at: 1)
array.removeFirst()
array.removeLast()
array.removeFirst(2)
array.removeLast(2)
array.removeSubrange(0...2)
array.replaceSubrange(0...2, with: [0, 1])
array.removeAll()
if array.contains(1) {
	print(true)
}

// 遍历数组
let arrayLet1 = [0, 1, 2, 3, 4]
let arrayLet2 = [(1, 2), (2, 3), (3, 4)]
for item in arrayLet1 {
	print(item)
}
for item in arrayLet1.enumerated() {
	print(item)
}
for index in arrayLet2.indices {
	print(arrayLet2[index], "")
}

// 数组排序
var arraySort = [1, 3, 5, 6, 7]
arraySort = arraySort.sorted(by: >)
arraySort = arraySort.sorted(by: <)

// 获取最值
arraySort.max()
arraySort.min()

/* 3.4.2 Set集合类型 */

// 创建set集合
var set1:Set<Int> = [1, 2, 3, 4]
var set2 = Set(arrayLiteral: 1, 2, 3, 4)

// 获取首个元素
set1[set1.startIndex]
// 向后移动一个
set1[set1.index(after: set1.startIndex)]
// 向后移动多个
set1[set1.index(set1.startIndex, offsetBy: 3)]

set1.count
if set1.isEmpty {
	print("集合为空")
}
if set1.contains(1) {
	print("集合包含")
}
set1.max()
set1.min()

// 集合的增删改查操作
set1.insert(5)
set1.remove(1)
set1.removeFirst()
set1.remove(at: set1.index(of: 3)!)
set1.removeAll()

var set3:Set<Int> = [1, 2, 3, 4]
var set4:Set<Int> = [1, 2, 5, 6]
var setInter = set3.intersection(set4)
var setEx = set3.symmetricDifference(set4)
var setUni = set3.union(set4)
var setSub = set3.subtracting(set4)

var set5:Set = [1, 2]
var set6:Set = [2, 3]
var set7:Set = [1, 2, 3]
var set8:Set = [1, 2, 3]
set5.isSubset(of: set7)
set7.isSuperset(of: set5)
set5.isStrictSubset(of: set7)
set7.isStrictSuperset(of: set8)

// 遍历数组
for item in set7 {
	print(item)
}
for item in set7.enumerated() {
	print(item)
}
for index in set7.indices {
	print(set7[index])
}

// 从小到大遍历集合
for item in set7.sorted(by: <) {
	print(item)
}

/* 3.4.3 字典类型 */

var dic1:[Int:String]
var dic2:Dictionary<Int, String>
dic1 = [1:"1", 2:"2", 3:"3"]
dic2 = Dictionary(dictionaryLiteral: (1, "2"), (2, "3"), (3, "3"))
var dic3 = ["1":"one"]
// 创建空字典
var dic4:[Int:Int] = [:]
var dic5:Dictionary<Int, Int> = Dictionary()

dic1.count
if dic4.isEmpty {
	print("字典为空")
}

dic1[2]
dic1[1] = "0"
dic1[4] = "4"

//更新已存在的键值
dic1.updateValue("1", forKey: 1)

// 使用if-let处理updateValue的返回值
if let oldValue = dic1.updateValue("One", forKey: 1) {
	print("Old Value is \(oldValue)")
}

// 通过键来获取值也会返回Optional类型
if let value = dic2[1] {
	print("The value is \(value)")
}

// 删除单个键值对
dic1.removeValue(forKey: 1)
// 删除全部键值对
dic1.removeAll()

// 通过键来遍历字典
for item in dic2.keys {
	print(item)
}
// 通过值来遍历字典
for item in dic2.values {
	print(item)
}
// 直接遍历字典
for item in dic2 {
	print(item)
}
for (key, value) in dic2 {
	print("\(key):\(value)")
}
// 排序后遍历
for item in dic2.keys.sorted(by: >) {
	print(dic2[item]!)
}
