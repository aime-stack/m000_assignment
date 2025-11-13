// Comparison operations tests
// File: validators/comparison_test.ak

use lib/comparison

// ========== Equality Tests ==========
test equals_same_numbers() {
  trace @"Test: equals(5, 5)"
  let result = comparison.equals(5, 5)
  trace @"Expected: True, Got: {result}"
  result == True
}

test equals_different_numbers() {
  trace @"Test: equals(5, 10)"
  let result = comparison.equals(5, 10)
  trace @"Expected: False, Got: {result}"
  result == False
}

test equals_negative_numbers() {
  trace @"Test: equals(-5, -5)"
  comparison.equals(-5, -5) == True
}

test not_equals_different() {
  trace @"Test: not_equals(5, 10)"
  let result = comparison.not_equals(5, 10)
  trace @"Expected: True, Got: {result}"
  result == True
}

test not_equals_same() {
  trace @"Test: not_equals(5, 5)"
  comparison.not_equals(5, 5) == False
}

// ========== Greater Than Tests ==========
test greater_than_true() {
  trace @"Test: greater_than(10, 5)"
  let result = comparison.greater_than(10, 5)
  trace @"Expected: True, Got: {result}"
  result == True
}

test greater_than_false() {
  trace @"Test: greater_than(5, 10)"
  let result = comparison.greater_than(5, 10)
  trace @"Expected: False, Got: {result}"
  result == False
}

test greater_than_equal_numbers() {
  trace @"Test: greater_than(5, 5)"
  comparison.greater_than(5, 5) == False
}

test greater_than_with_negative() {
  trace @"Test: greater_than(-5, -10)"
  comparison.greater_than(-5, -10) == True
}

// ========== Less Than Tests ==========
test less_than_true() {
  trace @"Test: less_than(5, 10)"
  let result = comparison.less_than(5, 10)
  trace @"Expected: True, Got: {result}"
  result == True
}

test less_than_false() {
  trace @"Test: less_than(10, 5)"
  let result = comparison.less_than(10, 5)
  trace @"Expected: False, Got: {result}"
  result == False
}

test less_than_equal_numbers() {
  trace @"Test: less_than(5, 5)"
  comparison.less_than(5, 5) == False
}

test less_than_with_negative() {
  trace @"Test: less_than(-10, -5)"
  comparison.less_than(-10, -5) == True
}

// ========== Greater or Equal Tests ==========
test greater_or_equal_greater() {
  trace @"Test: greater_or_equal(10, 5)"
  let result = comparison.greater_or_equal(10, 5)
  trace @"Expected: True, Got: {result}"
  result == True
}

test greater_or_equal_equal() {
  trace @"Test: greater_or_equal(5, 5)"
  let result = comparison.greater_or_equal(5, 5)
  trace @"Expected: True, Got: {result}"
  result == True
}

test greater_or_equal_less() {
  trace @"Test: greater_or_equal(3, 5)"
  let result = comparison.greater_or_equal(3, 5)
  trace @"Expected: False, Got: {result}"
  result == False
}

// ========== Less or Equal Tests ==========
test less_or_equal_less() {
  trace @"Test: less_or_equal(5, 10)"
  let result = comparison.less_or_equal(5, 10)
  trace @"Expected: True, Got: {result}"
  result == True
}

test less_or_equal_equal() {
  trace @"Test: less_or_equal(5, 5)"
  let result = comparison.less_or_equal(5, 5)
  trace @"Expected: True, Got: {result}"
  result == True
}

test less_or_equal_greater() {
  trace @"Test: less_or_equal(10, 5)"
  let result = comparison.less_or_equal(10, 5)
  trace @"Expected: False, Got: {result}"
  result == False
}

// ========== Max Tests ==========
test max_first_larger() {
  trace @"Test: max(10, 5)"
  let result = comparison.max(10, 5)
  trace @"Expected: 10, Got: {result}"
  result == 10
}

test max_second_larger() {
  trace @"Test: max(3, 8)"
  let result = comparison.max(3, 8)
  trace @"Expected: 8, Got: {result}"
  result == 8
}

test max_equal_numbers() {
  trace @"Test: max(5, 5)"
  comparison.max(5, 5) == 5
}

test max_with_negative() {
  trace @"Test: max(-5, -10)"
  comparison.max(-5, -10) == -5
}

test max_mixed_signs() {
  trace @"Test: max(-5, 3)"
  comparison.max(-5, 3) == 3
}

// ========== Min Tests ==========
test min_first_smaller() {
  trace @"Test: min(3, 7)"
  let result = comparison.min(3, 7)
  trace @"Expected: 3, Got: {result}"
  result == 3
}

test min_second_smaller() {
  trace @"Test: min(9, 4)"
  let result = comparison.min(9, 4)
  trace @"Expected: 4, Got: {result}"
  result == 4
}

test min_equal_numbers() {
  trace @"Test: min(6, 6)"
  comparison.min(6, 6) == 6
}

test min_with_negative() {
  trace @"Test: min(-5, 3)"
  let result = comparison.min(-5, 3)
  trace @"Expected: -5, Got: {result}"
  result == -5
}

test min_both_negative() {
  trace @"Test: min(-5, -10)"
  comparison.min(-5, -10) == -10
}

// ========== Positive/Negative/Zero Tests ==========
test is_positive_with_positive() {
  trace @"Test: is_positive(5)"
  let result = comparison.is_positive(5)
  trace @"Expected: True, Got: {result}"
  result == True
}

test is_positive_with_negative() {
  trace @"Test: is_positive(-5)"
  comparison.is_positive(-5) == False
}

test is_positive_with_zero() {
  trace @"Test: is_positive(0)"
  comparison.is_positive(0) == False
}

test is_negative_with_negative() {
  trace @"Test: is_negative(-3)"
  let result = comparison.is_negative(-3)
  trace @"Expected: True, Got: {result}"
  result == True
}

test is_negative_with_positive() {
  trace @"Test: is_negative(3)"
  comparison.is_negative(3) == False
}

test is_negative_with_zero() {
  trace @"Test: is_negative(0)"
  comparison.is_negative(0) == False
}

test is_zero_with_zero() {
  trace @"Test: is_zero(0)"
  let result = comparison.is_zero(0)
  trace @"Expected: True, Got: {result}"
  result == True
}

test is_zero_with_positive() {
  trace @"Test: is_zero(5)"
  comparison.is_zero(5) == False
}

test is_zero_with_negative() {
  trace @"Test: is_zero(-5)"
  comparison.is_zero(-5) == False
}

// ========== Even/Odd Tests ==========
test is_even_with_even() {
  trace @"Test: is_even(4)"
  let result = comparison.is_even(4)
  trace @"Expected: True, Got: {result}"
  result == True
}

test is_even_with_odd() {
  trace @"Test: is_even(5)"
  let result = comparison.is_even(5)
  trace @"Expected: False, Got: {result}"
  result == False
}

test is_even_with_zero() {
  trace @"Test: is_even(0)"
  comparison.is_even(0) == True
}

test is_even_with_negative() {
  trace @"Test: is_even(-4)"
  comparison.is_even(-4) == True
}

test is_odd_with_odd() {
  trace @"Test: is_odd(7)"
  let result = comparison.is_odd(7)
  trace @"Expected: True, Got: {result}"
  result == True
}

test is_odd_with_even() {
  trace @"Test: is_odd(8)"
  let result = comparison.is_odd(8)
  trace @"Expected: False, Got: {result}"
  result == False
}

test is_odd_with_negative() {
  trace @"Test: is_odd(-7)"
  comparison.is_odd(-7) == True
}
