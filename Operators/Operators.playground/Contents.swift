import UIKit

//结果为 in english: "The result is"

// Arithmetic operators
var A = 10
var B = 20

print("A + B 结果为：\(A + B)")
print("A - B 结果为：\(A - B)")
print("A * B 结果为：\(A * B)")
print("B / A 结果为：\(B / A)")
A += 1
print("A++ 后 A 的值为 \(A)")
B -= 1
print("B-- 后 B 的值为 \(B)")

// Comparison
var A1 = 10
var B1 = 20

print("A1 == B1 结果为：\(A1 == B1)")
print("A1 != B1 结果为：\(A1 != B1)")
print("A1 > B1 结果为：\(A1 > B1)")
print("A1 < B1 结果为：\(A1 < B1)")
print("A1 >= B1 结果为：\(A1 >= B1)")
print("A1 <= B1 结果为：\(A1 <= B1)")

// Logical Operators
var A2 = true
var B2 = false

print("A2 && B 结果为：\(A2 && B2)")
print("A2 || B 结果为：\(A2 || B2)")
print("!A2 结果为：\(!A2)")
print("!B2 结果为：\(!B2)")

// Bitwise Operators
var A3 = 60  // 二进制为 0011 1100
var B3 = 13 // 二进制为 0000 1101

print("A&B 结果为：\(A3&B3)")
print("A|B 结果为：\(A3|B3)")
print("A^B 结果为：\(A3^B3)")
print("~A 结果为：\(~A3)")

// Assignment Operators

var C = 100

C = A + B
print("C 结果为：\(C)")

C += A
print("C 结果为：\(C)")

C -= A
print("C 结果为：\(C)")

C *= A
print("C 结果为：\(C)")

C /= A
print("C 结果为：\(C)")

//以下测试已注释，可去掉注释测试每个实例
/*
 C %= A
 print("C 结果为：\(C)")
 
 
 C <<= A
 print("C 结果为：\(C)")
 
 C >>= A
 print("C 结果为：\(C)")
 
 C &= A
 print("C 结果为：\(C)")
 
 C ^= A
 print("C 结果为：\(C)")
 
 C |= A
 print("C 结果为：\(C)")
 */

// Interval Operators
print("闭区间运算符:")
for index in 1...5 {
    print("\(index) * 5 = \(index * 5)")
}

print("半开区间运算符:")
for index in 1..<5 {
    print("\(index) * 5 = \(index * 5)")
}

