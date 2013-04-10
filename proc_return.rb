# A Proc created with Proc.new is different from a Proc
# created with lambda.
#
# Both will be of the class Proc, but it is common to refer to a Proc
# created with lamda as "a lambda" and a Proc created with Proc.new
# as "a proc"
#
# This program shows how returns from a lambda are different from returns
# from a proc

def lambda_foo
  my_lambda = lambda { return 'return from lambda' }
  my_lambda.call
  return 'return from method lambda_foo'
end

def proc_foo
  my_proc = Proc.new { return 'return from proc' }
  my_proc.call
  return 'return from method proc_foo'
end

puts lambda_foo
puts proc_foo
