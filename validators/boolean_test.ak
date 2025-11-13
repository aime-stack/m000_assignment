// Boolean operations tests
// File: validators/boolean_test.ak
use lib/boolean_ops

// ========== AND Tests ==========
test and_true_true() {
  trace @"Test: bool_and(True, True)"
  let result = boolean_ops.bool_and(True, True)
  trace @"Expected: True, Got: {result}"
  result == True
}

test and_true_false() {
  trace @"Test: bool_and(True, False)"
  let result = boolean_ops.bool_and(True, False)
  trace @"Expected: False, Got: {result}"
  result == False
}

test and_false_true() {
  trace @"Test: bool_and(False, True)"
  boolean_ops.bool_and(False, True) == False
}

test and_false_false() {
  trace @"Test: bool_and(False, False)"
  boolean_ops.bool_and(False, False) == False
}

// ========== OR Tests ==========
test or_true_true() {
  trace @"Test: bool_or(True, True)"
  let result = boolean_ops.bool_or(True, True)
  trace @"Expected: True, Got: {result}"
  result == True
}

test or_true_false() {
  trace @"Test: bool_or(True, False)"
  let result = boolean_ops.bool_or(True, False)
  trace @"Expected: True, Got: {result}"
  result == True
}

test or_false_true() {
  trace @"Test: bool_or(False, True)"
  boolean_ops.bool_or(False, True) == True
}

test or_false_false() {
  trace @"Test: bool_or(False, False)"
  let result = boolean_ops.bool_or(False, False)
  trace @"Expected: False, Got: {result}"
  result == False
}

// ========== NOT Tests ==========
test not_true() {
  trace @"Test: bool_not(True)"
  let result = boolean_ops.bool_not(True)
  trace @"Expected: False, Got: {result}"
  result == False
}

test not_false() {
  trace @"Test: bool_not(False)"
  let result = boolean_ops.bool_not(False)
  trace @"Expected: True, Got: {result}"
  result == True
}

// ========== XOR Tests ==========
test xor_true_true() {
  trace @"Test: bool_xor(True, True)"
  let result = boolean_ops.bool_xor(True, True)
  trace @"Expected: False, Got: {result}"
  result == False
}

test xor_true_false() {
  trace @"Test: bool_xor(True, False)"
  let result = boolean_ops.bool_xor(True, False)
  trace @"Expected: True, Got: {result}"
  result == True
}

test xor_false_true() {
  trace @"Test: bool_xor(False, True)"
  boolean_ops.bool_xor(False, True) == True
}

test xor_false_false() {
  trace @"Test: bool_xor(False, False)"
  boolean_ops.bool_xor(False, False) == False
}

// ========== NAND Tests ==========
test nand_true_true() {
  trace @"Test: bool_nand(True, True)"
  let result = boolean_ops.bool_nand(True, True)
  trace @"Expected: False, Got: {result}"
  result == False
}

test nand_true_false() {
  trace @"Test: bool_nand(True, False)"
  boolean_ops.bool_nand(True, False) == True
}

test nand_false_true() {
  trace @"Test: bool_nand(False, True)"
  boolean_ops.bool_nand(False, True) == True
}

test nand_false_false() {
  trace @"Test: bool_nand(False, False)"
  boolean_ops.bool_nand(False, False) == True
}

// ========== NOR Tests ==========
test nor_true_true() {
  trace @"Test: bool_nor(True, True)"
  boolean_ops.bool_nor(True, True) == False
}

test nor_true_false() {
  trace @"Test: bool_nor(True, False)"
  boolean_ops.bool_nor(True, False) == False
}

test nor_false_true() {
  trace @"Test: bool_nor(False, True)"
  boolean_ops.bool_nor(False, True) == False
}

test nor_false_false() {
  trace @"Test: bool_nor(False, False)"
  let result = boolean_ops.bool_nor(False, False)
  trace @"Expected: True, Got: {result}"
  result == True
}

// ========== XNOR Tests ==========
test xnor_true_true() {
  trace @"Test: bool_xnor(True, True)"
  let result = boolean_ops.bool_xnor(True, True)
  trace @"Expected: True, Got: {result}"
  result == True
}

test xnor_true_false() {
  trace @"Test: bool_xnor(True, False)"
  boolean_ops.bool_xnor(True, False) == False
}

test xnor_false_true() {
  trace @"Test: bool_xnor(False, True)"
  boolean_ops.bool_xnor(False, True) == False
}

test xnor_false_false() {
  trace @"Test: bool_xnor(False, False)"
  boolean_ops.bool_xnor(False, False) == True
}

// ========== Implication Tests ==========
test implies_true_true() {
  trace @"Test: bool_implies(True, True)"
  let result = boolean_ops.bool_implies(True, True)
  trace @"Expected: True, Got: {result}"
  result == True
}

test implies_true_false() {
  trace @"Test: bool_implies(True, False) - false premise"
  let result = boolean_ops.bool_implies(True, False)
  trace @"Expected: False, Got: {result}"
  result == False
}

test implies_false_true() {
  trace @"Test: bool_implies(False, True) - vacuous truth"
  boolean_ops.bool_implies(False, True) == True
}

test implies_false_false() {
  trace @"Test: bool_implies(False, False) - vacuous truth"
  boolean_ops.bool_implies(False, False) == True
}
