// Arithmetic operations module

/// Add two integers
pub fn add(a: Int, b: Int) -> Int {
  a + b
}

/// Subtract b from a
pub fn subtract(a: Int, b: Int) -> Int {
  a - b
}

/// Multiply two integers
pub fn multiply(a: Int, b: Int) -> Int {
  a * b
}

/// Divide a by b
pub fn divide(a: Int, b: Int) -> Int {
  a / b
}

/// Tests with trace messages
test add_10_5() {
  trace @"Testing addition: 10 + 5"
  let result = add(10, 5)
  trace @"Result: {result}"
  result == 15
}

test add_minus2_3() {
  trace @"Testing addition with negative: -2 + 3"
  let result = add(-2, 3)
  trace @"Expected: 1, Got: {result}"
  result == 1
}

test add_0_0() {
  trace @"Testing zero addition"
  add(0, 0) == 0
}

test subtract_10_5() {
  trace @"Testing subtraction: 10 - 5"
  let result = subtract(7, 5)
  trace @"Result should be : {result}"
  result == 2
}

test subtract_5_10() {
  trace @"Testing subtraction with negative result: 5 - 10"
  subtract(5, 10) == -5
}

test multiply_3_4() {
  trace @"Testing multiplication: 3 * 4"
  let result = multiply(3, 4)
  trace @"Verifying result: {result} == 12"
  result == 12
}

test multiply_neg2_3() {
  trace @"Testing negative multiplication: -2 * 3"
  multiply(-2, 3) == -6
}

test divide_10_2() {
  trace @"Testing division: 10 / 2"
  divide(10, 2) == 5
}

test divide_7_2() {
  trace @"Testing integer division: 7 / 2 (should truncate)"
  let result = divide(7, 2)
  trace @"Integer division result: {result}"
  result == 3  // Integer division
}