#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.6
# from Racc grammer file "".
#

require 'racc/parser.rb'

require 'reginald/tokenizer'
module Reginald
  class Parser < Racc::Parser
##### State transition tables begin ###

racc_action_table = [
    27,     4,    37,     6,     7,     8,     9,    41,    11,    35,
    36,     4,     3,     6,     7,     8,     9,    40,    11,    34,
    28,     4,     3,     6,     7,     8,     9,    23,    11,    45,
    46,     4,     3,     6,     7,     8,     9,    47,    11,    48,
   nil,     4,     3,     6,     7,     8,     9,    24,    11,   nil,
   nil,     4,     3,     6,     7,     8,     9,   nil,    11,   nil,
   nil,     4,     3,     6,     7,     8,     9,    17,    11,   nil,
    17,   nil,     3,    14,    15,    16,    14,    15,    16,    29,
   nil,   nil,    30,    31,    32,    42,   nil,   nil,    30,    31,
    32,    19,   nil,    20,    21,    22,    20,    21,    22 ]

racc_action_check = [
    12,    12,    25,    12,    12,    12,    12,    28,    12,    24,
    24,    39,    12,    39,    39,    39,    39,    28,    39,    23,
    16,    35,    39,    35,    35,    35,    35,    10,    35,    41,
    43,    27,    35,    27,    27,    27,    27,    44,    27,    45,
   nil,    11,    27,    11,    11,    11,    11,    11,    11,   nil,
   nil,     0,    11,     0,     0,     0,     0,   nil,     0,   nil,
   nil,    36,     0,    36,    36,    36,    36,    26,    36,   nil,
     1,   nil,    36,    26,    26,    26,     1,     1,     1,    18,
   nil,   nil,    18,    18,    18,    33,   nil,   nil,    33,    33,
    33,     4,   nil,     4,     4,     4,    19,    19,    19 ]

racc_action_pointer = [
    48,    61,   nil,   nil,    86,   nil,   nil,   nil,   nil,   nil,
    27,    38,    -2,   nil,   nil,   nil,    12,   nil,    75,    89,
   nil,   nil,   nil,    19,    -3,    -9,    58,    28,    -1,   nil,
   nil,   nil,   nil,    81,   nil,    18,    58,   nil,   nil,     8,
   nil,    21,   nil,    19,    26,    21,   nil,   nil,   nil ]

racc_action_default = [
   -30,    -6,    -7,   -24,   -30,   -12,   -23,   -10,   -11,   -13,
   -30,   -30,    -2,    -5,   -25,   -26,   -30,   -27,   -30,   -30,
   -18,   -17,   -19,   -30,   -30,   -30,    -4,   -30,   -30,    -8,
   -15,   -14,   -16,   -30,    49,   -30,   -30,   -20,    -3,    -1,
   -29,   -30,    -9,   -30,   -30,   -30,   -21,   -22,   -28 ]

racc_goto_table = [
    10,    26,    13,    18,    39,   nil,   nil,   nil,   nil,   nil,
   nil,    25,   nil,   nil,   nil,   nil,   nil,   nil,    33,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    38,    26,   nil,
   nil,   nil,   nil,   nil,   nil,    43,    44 ]

racc_goto_check = [
     1,     3,     4,     6,     2,   nil,   nil,   nil,   nil,   nil,
   nil,     1,   nil,   nil,   nil,   nil,   nil,   nil,     6,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,     4,     3,   nil,
   nil,   nil,   nil,   nil,   nil,     1,     1 ]

racc_goto_pointer = [
   nil,     0,   -23,   -11,     1,   nil,    -1,   nil ]

racc_goto_default = [
   nil,   nil,    12,     1,   nil,     2,   nil,     5 ]

racc_reduce_table = [
  0, 0, :racc_error,
  3, 20, :_reduce_1,
  1, 20, :_reduce_2,
  3, 21, :_reduce_3,
  2, 21, :_reduce_4,
  2, 21, :_reduce_5,
  1, 21, :_reduce_none,
  1, 22, :_reduce_none,
  3, 22, :_reduce_8,
  4, 22, :_reduce_9,
  1, 22, :_reduce_10,
  1, 22, :_reduce_11,
  1, 22, :_reduce_12,
  1, 22, :_reduce_13,
  2, 25, :_reduce_14,
  2, 25, :_reduce_15,
  2, 25, :_reduce_16,
  1, 25, :_reduce_none,
  1, 25, :_reduce_none,
  1, 25, :_reduce_none,
  3, 24, :_reduce_20,
  5, 24, :_reduce_21,
  5, 24, :_reduce_22,
  1, 26, :_reduce_none,
  1, 26, :_reduce_none,
  1, 23, :_reduce_none,
  1, 23, :_reduce_none,
  1, 23, :_reduce_none,
  5, 23, :_reduce_28,
  3, 23, :_reduce_29 ]

racc_reduce_n = 30

racc_shift_n = 49

racc_token_table = {
  false => 0,
  :error => 1,
  :BAR => 2,
  :LBRACK => 3,
  :RBRACK => 4,
  :L_ANCHOR => 5,
  :CHAR_CLASS => 6,
  :DOT => 7,
  :CHAR => 8,
  :QMARK => 9,
  :LPAREN => 10,
  :RPAREN => 11,
  :COLON => 12,
  :NAME => 13,
  :R_ANCHOR => 14,
  :STAR => 15,
  :PLUS => 16,
  :LCURLY => 17,
  :RCURLY => 18 }

racc_nt_base = 19

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "BAR",
  "LBRACK",
  "RBRACK",
  "L_ANCHOR",
  "CHAR_CLASS",
  "DOT",
  "CHAR",
  "QMARK",
  "LPAREN",
  "RPAREN",
  "COLON",
  "NAME",
  "R_ANCHOR",
  "STAR",
  "PLUS",
  "LCURLY",
  "RCURLY",
  "$start",
  "expression",
  "branch",
  "atom",
  "quantifier",
  "group",
  "bracket_expression",
  "anchor" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

def _reduce_1(val, _values, result)
 result = Expression.new(Alternation.new([Expression.new(val[0]), Expression.new(val[2])])) 
    result
end

def _reduce_2(val, _values, result)
 result = Expression.new(val[0]) 
    result
end

def _reduce_3(val, _values, result)
            val[1].quantifier = val[2]
            result = Node.new(val[0], val[1])
          
    result
end

def _reduce_4(val, _values, result)
 result = Node.new(val[0], val[1]) 
    result
end

def _reduce_5(val, _values, result)
            val[0].quantifier = val[1]
            result = val[0]
          
    result
end

# reduce 6 omitted

# reduce 7 omitted

def _reduce_8(val, _values, result)
 result = CharacterClass.new(val[1]) 
    result
end

def _reduce_9(val, _values, result)
 result = CharacterClass.new(val[2]); result.negate = true 
    result
end

def _reduce_10(val, _values, result)
 result = CharacterClass.new(val[0]) 
    result
end

def _reduce_11(val, _values, result)
 result = CharacterClass.new(val[0]) 
    result
end

def _reduce_12(val, _values, result)
 result = Anchor.new(val[0]) 
    result
end

def _reduce_13(val, _values, result)
 result = Character.new(val[0]) 
    result
end

def _reduce_14(val, _values, result)
 result = val.join 
    result
end

def _reduce_15(val, _values, result)
 result = val.join 
    result
end

def _reduce_16(val, _values, result)
 result = val.join 
    result
end

# reduce 17 omitted

# reduce 18 omitted

# reduce 19 omitted

def _reduce_20(val, _values, result)
 result = Group.new(val[1]) 
    result
end

def _reduce_21(val, _values, result)
 result = Group.new(val[3]); result.capture = false 
    result
end

def _reduce_22(val, _values, result)
 result = Group.new(val[3]); result.name = val[2] 
    result
end

# reduce 23 omitted

# reduce 24 omitted

# reduce 25 omitted

# reduce 26 omitted

# reduce 27 omitted

def _reduce_28(val, _values, result)
 result = val.join 
    result
end

def _reduce_29(val, _values, result)
 result = val.join 
    result
end

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class Parser
end   # module Reginald
