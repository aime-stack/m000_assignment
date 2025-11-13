// Arithmetic tests
// File: validators/arithmetic_test.ak

use lib/arithmetic

// ========== Addition Tests ==========
test add_positive_numbers() {
  trace @"Test: add(10, 5)"
  let result = arithmetic.add(10, 5)
  trace @"Expected: 15, Got: {result}"
  result == 15
}

test add_negative_numbers() {
  trace @"Test: add(-2, 3)"
  let result = arithmetic.add(-2, 3)
  trace @"Expected: 1, Got: {result}"
  result == 1
}

test add_zero() {
  trace @"Test: add(0, 0)"
  arithmetic.add(0, 0) == 0
}

test add_with_negative_result() {
  trace @"Test: add(-10, 3)"
  arithmetic.add(-10, 3) == -7
}

// ========== Subtraction Tests ==========
test subtract_positive_numbers() {
  trace @"Test: subtract(10, 5)"
  let result = arithmetic.subtract(10, 5)
  trace @"Expected: 5, Got: {result}"
  result == 5
}

test subtract_resulting_negative() {
  trace @"Test: subtract(5, 10)"
  let result = arithmetic.subtract(5, 10)
  trace @"Expected: -5, Got: {result}"
  result == -5
}

test subtract_zero() {
  trace @"Test: subtract(10, 0)"
  arithmetic.subtract(10, 0) == 10
}

test subtract_from_zero() {
  trace @"Test: subtract(0, 5)"
  arithmetic.subtract(0, 5) == -5
}

// ========== Multiplication Tests ==========
test multiply_positive_numbers() {
  trace @"Test: multiply(3, 4)"
  let result = arithmetic.multiply(3, 4)
  trace @"Expected: 12, Got: {result}"
  result == 12
}

test multiply_with_negative() {
  trace @"Test: multiply(-2, 3)"
  let result = arithmetic.multiply(-2, 3)
  trace @"Expected: -6, Got: {result}"
  result == -6
}

test multiply_with_zero() {
  trace @"Test: multiply(5, 0)"
  arithmetic.multiply(5, 0) == 0
}

test multiply_negative_numbers() {
  trace @"Test: multiply(-3, -4)"
  arithmetic.multiply(-3, -4) == 12
}

// ========== Division Tests ==========
test divide_evenly() {
  trace @"Test: divide(10, 2)"
  let result = arithmetic.divide(10, 2)
  trace @"Expected: 5, Got: {result}"
  result == 5
}

test divide_with_remainder() {
  trace @"Test: divide(7, 2) - integer division"
  let result = arithmetic.divide(7, 2)
  trace @"Expected: 3, Got: {result}"
  result == 3
}

test divide_negative() {
  trace @"Test: divide(-10, 2)"
  arithmetic.divide(-10, 2) == -5
}

test divide_by_one() {
  trace @"Test: divide(42, 1)"
  arithmetic.divide(42, 1) == 42
}

// ========== Modulo Tests ==========
test modulo_basic() {
  trace @"Test: modulo(10, 3)"
  let result = arithmetic.modulo(10, 3)
  trace @"Expected: 1, Got: {result}"
  result == 1
}

test modulo_zero_remainder() {
  trace @"Test: modulo(10, 5)"
  arithmetic.modulo(10, 5) == 0
}

test modulo_larger_divisor() {
  trace @"Test: modulo(3, 10)"
  arithmetic.modulo(3, 10) == 3
}

// ========== Power Tests ==========
test power_basic() {
  trace @"Test: power(2, 3)"
  let result = arithmetic.power(2, 3)
  trace @"Expected: 8, Got: {result}"
  result == 8
}

test power_to_zero() {
  trace @"Test: power(5, 0)"
  arithmetic.power(5, 0) == 1
}

test power_to_one() {
  trace @"Test: power(7, 1)"
  arithmetic.power(7, 1) == 7
}

test power_negative_base() {
  trace @"Test: power(-2, 3)"
  arithmetic.power(-2, 3) == -8
}

// ========== Absolute Value Tests ==========
test abs_positive() {
  trace @"Test: abs(10)"
  let result = arithmetic.abs(10)
  trace @"Expected: 10, Got: {result}"
  result == 10
}

test abs_negative() {
  trace @"Test: abs(-10)"
  let result = arithmetic.abs(-10)
  trace @"Expected: 10, Got: {result}"
  result == 10
}

test abs_zero() {
  trace @"Test: abs(0)"
  arithmetic.abs(0) == 0
}
