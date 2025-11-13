// Boolean operations module

/// Logical AND
pub fn bool_and(a: Bool, b: Bool) -> Bool {
  a && b
}

/// Logical OR
pub fn bool_or(a: Bool, b: Bool) -> Bool {
  a || b
}

/// Logical NOT
pub fn bool_not(a: Bool) -> Bool {
  !a
}

/// Logical XOR (exclusive OR)
pub fn bool_xor(a: Bool, b: Bool) -> Bool {
  ( a || b ) && !(a && b)
}

/// Logical NAND (NOT AND)
pub fn bool_nand(a: Bool, b: Bool) -> Bool {
  !(a && b)
}

/// Logical NOR (NOT OR)
pub fn bool_nor(a: Bool, b: Bool) -> Bool {
  !(a || b)
}

/// Logical XNOR (NOT XOR)
pub fn bool_xnor(a: Bool, b: Bool) -> Bool {
  !(( a || b ) && !(a && b))
}

/// Implication (if a then b)
pub fn bool_implies(a: Bool, b: Bool) -> Bool {
  !a || b
}
