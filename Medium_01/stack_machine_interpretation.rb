=begin
A stack is a list of values that grows and shrinks dynamically. In ruby, a stack is easily implemented as an Array that just uses the #push and #pop methods.

A stack-and-register programming language is a language that uses a stack of values. Each operation in the language operates on a register, which can be thought of as the current value. The register is not part of the stack. Operations that require two values pop the topmost item from the stack (that is, the operation removes the most recently pushed value from the stack), perform the operation using the popped value and the register value, and then store the result back in the register.

Consider a MULT operation in a stack-and-register language. It multiplies the stack value with the register value, removes the value from the stack, and then stores the result back in the register. Thus, if we start with a stack of 3 6 4 (where 4 is the topmost item in the stack), and a register value of 7, then the MULT operation will transform things to 3 6 on the stack (the 4 is removed), and the result of the multiplication, 28, is left in the register. If we do another MULT at this point, then the stack is transformed to 3, and the register is left with the value 168.

Write a method that implements a miniature stack-and-register-based programming language that has the following commands:

n Place a value n in the "register". Do not modify the stack.
PUSH Push the register value on to the stack. Leave the value in the register.
ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
POP Remove the topmost item from the stack and place in register
PRINT Print the register value
All operations are integer operations (which is only important with DIV and MOD).

Programs will be supplied to your language method via a string passed in as an argument. Your program may assume that all programs are correct programs; that is, they won't do anything like try to pop a non-existent value from the stack, and they won't contain unknown tokens.

You should initialize the register to 0.
=end

# Further Exploration - Try writing a minilang program to evaluate and print the result of this expression: The answer should be 8. This is trickier than it sounds! Note that we aren't asking you to modify the #minilang method; we want you to write a Minilang program that can be passed to #minilang and evaluated. Add some error handling to your method. In particular, have the method detect empty stack conditions, and invalid tokens in the program, and report those. Ideally, the method should return an error message if an error occurs, and nil if the program runs successfully.

# Initial Solution
def minilang(commands)
  register = 0
  stack = []
  commands.split(' ').each do |command|
    register = command.to_i if command.to_i.to_s == command
    case command
    when 'PUSH' then stack.push(register)
    when 'ADD' then register += stack.pop
    when 'SUB' then register -= stack.pop
    when 'MULT' then register *= stack.pop
    when 'DIV' then register /= stack.pop
    when 'MOD' then register %= stack.pop
    when 'POP' then register = stack.pop
    when 'PRINT' then puts register
    end
  end
end
      
# Further Exploration
OPERATORS = {
  '+' => 'ADD',
  '-' => 'SUB',
  '*' => 'MULT',
  '/' => 'DIV',
  '%' => 'MOD'
}
      
def interpreter(operations)
  commands = operations.chars.reverse
  commands.delete(' ')
  command_str = ''
  count_para = 0
  op_temp = []
  previous = ''
  commands.each do |command|
    if command == ')'
      count_para += 1
    elsif command.to_i.to_s == command
      if !OPERATORS.keys.include?(previous)
        command_str << "#{command} PUSH "
      else
        command_str << "#{command} "
      end
    elsif OPERATORS.keys.include?(command)
      op_temp.push(OPERATORS[command])
    elsif command == '('
      if count_para > 1 || !op_temp.empty?
        command_str << "#{op_temp.pop} "
      end
      command_str << "#{op_temp.pop} PUSH "
      count_para -= 1
    end
    p command_str
    previous = command
  end
  command_str << "#{op_temp.pop} " until op_temp.empty?
  command_str << 'PRINT'
  minilang(command_str)
end

      
p interpreter('(3 + (4 * 5) - 7) / (5 % 3)')

=begin
# Examples
p minilang('5 PUSH 3 MULT PRINT')
# 15

p minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

p minilang('5 PUSH POP PRINT')
# 5

p minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

p minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

p minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

p minilang('-3 PUSH 5 SUB PRINT')
# 8

p minilang('6 PUSH')
# (nothing printed; no PRINT commands)      
=end

#Psuedo for F.E.
# (3 % 5) / (7 - (5 * 4) + 3)
=begin
- Define constant OPERATORS aa hash for operation values as strings
- Define a method, interpreter, with a single parameter, operations
  - Define a new array, commands = operations.chars.reverse.delete(' ')
  - Define variable, command_str = '' (this will hold the final string to be passed to minilang)
  - Define array, op_temp = [] (this will hold operators while dealing with number order)
  - Define variable, count_parentheses = 0
  - Define variable, previous = ''
  - Begin iterating through each command in commands (This iterator will evaluate each command and push it to the command_str)
    - IF command == '('
      - count_para += 1
    - ELSIF command.to_i.to_s == command
      - UNLESS OPERATORS.keys.include?(previous)
        - command_str << "#{command} PUSH " 
    - ELSIF OPERATORS.keys.include?(command)
      - op_temp.push(OPERATORS[command])
    - ELSIF command == ')'
      - command_str << "#{op_temp.pop} PUSH "
      - count_para -= 1
    - END
    - previous = command
  - command_str << "#{op_temp.pop} " UNTIL op_temp.empty?
  - command_str << "PRINT"
  - Push 3 to stack, push % to array, register 5, MOD 3 from stack, push / to array, push register to stack, push 7 to stack, push - to array, push 5 to stack, push * to array, register 4, MULT 5 from stack, SUB 7 from stack, push register to stack, push + to array, register 3, ADD stack.pop to register, DIV stack.pop from register, PRINT

=end
=begin
command_str = '3 PUSH 5 MOD PUSH 7 PUSH 5 PUSH 4 MULT PUSH 3 ADD SUB DIV PRINT'
op_temp = []
count_para = 0
=end
