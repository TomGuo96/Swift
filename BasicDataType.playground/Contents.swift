//: Playground - noun: a place where people can play

import Cocoa

/****************
 * 2.3 初识数据类型
 ****************/

/* 2.3.2 整形数据 */

// 获取数据类型所占的字节数
var a = MemoryLayout<UInt>.size

// 8、16、32、64位和本机无符号整数最大值
var a1 = UInt8.max
var a2 = UInt16.max
var a3 = UInt32.max
var a4 = UInt64.max
var a5 = UInt.max

// 8、16、32、64位有符号整数最值
var maxInt8 = Int8.max
var minInt8 = Int8.min
var maxInt16 = Int16.max
var minInt16 = Int16.min
var maxInt32 = Int32.max
var minInt32 = Int32.min
var maxInt64 = Int64.max
var minInt64 = Int64.min

/* 2.3.3 浮点型数据 */

var b1 = MemoryLayout<Float>.size
var b2 = MemoryLayout<Float32>.size
var b3 = MemoryLayout<Float64>.size
var b4 = MemoryLayout<Float80>.size
var c = MemoryLayout<Double>.size

// 使用科学计数法与其他进制
var sum1 = 1.25e3;
var sum2 = 0x1p3

// 增加0与下划线来填充
var num1 = 001.23
var num2 = 1_1000
var num3 = 1_000.1_001

/* 2.3.4 布尔型数据 */

var bool1 = true
var bool2 = false

/************************
 * 2.4 两种特殊的基本数据类型
 ************************/

/* 2.4.1 元组 */

// 创建元组类型
var pen:(name:String, price:Int) = ("钢笔", 2)

// 获取pen变量名称
var name = pen.name
// 获取pen变量价格
var price = pen.price

// 不指定参数名的元组
var car1:(String, Int) = ("奔驰", 2000000)
// 通过下标获取元组的各个组成元素的值
var carName = car1.0;
var carPrice = car1.1

// 指定的变量和常量来分解元组
var car2:(String, Int) = ("奔驰", 2000000)
var (theName, thePrice) = car2
print(theName, thePrice)

// 使用_表示匿名
var car3:(String, Int) = ("奔驰", 2000000)
var (theCarName, _) = car3
print(theCarName)

/* 2.4.2 可选值类型 */

var obj:String?
if obj == nil {
		print("空值")
}

// 拆包操作
var obj1:String? = "HS"
if obj1 != nil {
	obj1!
}


// if-let语法
var obj2:String? = "HS"
if let tmp = obj2 {
	print(tmp)
} else {
	obj2 = "HS"
	print(obj2!)
}

// if-let同时进行多个Optional类型值的绑定
var obj3:Int? = 1
var obj4:Int? = 2
if let tmp1 = obj3, let tmp2 = obj4, tmp1 < tmp2 {
	print(tmp1, tmp2)
}

/****************
 * 2.5 为类型取别名
 ****************/

typealias Price = Int
var penPrice:Price = 100
