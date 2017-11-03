//: Playground - noun: a place where people can play

import Cocoa

/**************
* 3.1 字符串类型
**************/

/* 3.1.1 进行字符串的构造 */

// 直接赋值
var str:String = "Hello, playground"
// 构造空字符串
var strNull = ""
// 通过构造方法来进行构造
var str1 = String()
var str2 = String("hello")
var str3 = String(666)
var str4 = String(6.66)
var str5 = String("a")
var str6 = String(false)
var str7 = String(describing:(1, 1.0, true))
var str8 = String(format:"我是%@“, ”郭奇涵")

/* 3.1.2 字符串的组合 */

var c1 = "Hello"
var c2 = "World"
var c3 = c1 + " " + c2

// 使用\()进行字符串插值
var d1 = "Hello \(123)"
var d2 = "Hello \(c2)"

/************
* 3.2 字符类型
************/

/* 3.2.1 字符类型的简介 */

// String与Character所占字节数
MemoryLayout<String>.size
MemoryLayout<Character>.size

// 创建一个字符
var e1:Character = "a"
// 创建字符数组
var e2:[Character] = ["H", "E", "L", "L", "O"]
// 用字符数组构造字符串
var e3 = String(e2)
// 通过构造方法创建字符型变量
var e4 = Character("a");

// 进行for-in遍历
let name = "China"
for character in name.characters {
	print(character)
}

/***********************
* 3.3 字符串类型中的常用方法
***********************/

// 判断字符串是否为空
var obj1 = ""
if obj1.isEmpty {
	print("字符串为空字符串")
}

// 获取字符串中的字符个数，判断是否为字符串
if obj1.characters.count == 0 {
	print("字符串为空字符串")
}

var com1 = "30a"
var com2 = "31a"
// 两个字符串是否完全相同
if com1 == com2 {
	print("com1和com2相等")
}
// 比较两个字符串的大小
if com1 < com2 {
	print("com1比com2小")
}

var string = "Hello-Swift"
// 获取字符串的开始下标 0
var startIndex = string.startIndex
// 获取字符串的结束下标 11
var endIndex = string.endIndex

// 获取前后的字符
var char1 = string[string.index(after:startIndex)]
var char2 = string[string.index(before:string.endIndex)]

// 通过范围获取字符串
var subString1 = string[startIndex...string.index(startIndex, offsetBy: 4)]
var subString2 = string[string.index(endIndex, offsetBy: -5)..<endIndex]

// 获取字串在父串中的范围
var range = string.range(of: "Hello")
// 追加一个字符
string.append(Character("!"))
// 在指定位置处插入一个字符
string.insert("~", at: string.index(string.startIndex, offsetBy: 9))
// 在指定位置处插入一组字符
string.insert(contentsOf: ["~", "~", "~"], at: string.index(string.startIndex, offsetBy: 4))
// 在指定范围替换一个字符
string.replaceSubrange(string.startIndex...string.index(string.startIndex, offsetBy: 4), with: "Hi")
// 在指定位置删除一个字符
string.remove(at: string.index(before:string.endIndex))
// 删除指定范围的字符
string.removeSubrange(string.startIndex...string.index(string.startIndex, offsetBy: 2))
// 删除所有字符
string.removeAll()


// 转换大小写
var stringMix = "My name is Jaki"
var stringUpper = stringMix.uppercased();
var stringLower = stringMix.lowercased();

// 检查以否有前缀与后缀
stringMix.hasPrefix("My")
stringMix.hasSuffix("Jaki")
