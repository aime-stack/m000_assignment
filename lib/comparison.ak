// Comparison operations module

/// Check if a equals b
pub fn equals(a: Int, b: Int) -> Bool {
  a == b
}

/// Check if a is not equal to b
pub fn not_equals(a: Int, b: Int) -> Bool {
  a != b
}

/// Check if a is greater than b
pub fn greater_than(a: Int, b: Int) -> Bool {
  a > b
}

/// Check if a is less than b
pub fn less_than(a: Int, b: Int) -> Bool {
  a < b
}

/// Check if a is greater than or equal to b
pub fn greater_or_equal(a: Int, b: Int) -> Bool {
  a >= b
}

/// Check if a is less than or equal to b
pub fn less_or_equal(a: Int, b: Int) -> Bool {
  a <= b
}

/// Find maximum of two numbers
pub fn max(a: Int, b: Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

/// Find minimum of two numbers
pub fn min(a: Int, b: Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

/// Check if number is positive
pub fn is_positive(n: Int) -> Bool {
  n > 0
}

/// Check if number is negative
pub fn is_negative(n: Int) -> Bool {
  n < 0
}

/// Check if number is zero
pub fn is_zero(n: Int) -> Bool {
  n == 0
}

/// Check if number is even
pub fn is_even(n: Int) -> Bool {
  n % 2 == 0
}

/// Check if number is odd
pub fn is_odd(n: Int) -> Bool {
  n % 2 != 0
}
