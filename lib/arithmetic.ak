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

/// Divide a by b (integer division)
pub fn divide(a: Int, b: Int) -> Int {
  a / b
}

/// Modulo operation
pub fn modulo(a: Int, b: Int) -> Int {
  a % b
}

/// Power operation (a raised to power b)
pub fn power(a: Int, b: Int) -> Int {
  if b == 0 {
    1
  } else if b == 1 {
    a
  } else {
    a * power(a, b - 1)
  }
}

/// Absolute value
pub fn abs(n: Int) -> Int {
  if n < 0 {
    -n
  } else {
    n
  }
}
