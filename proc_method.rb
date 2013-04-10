# If you run this program with Ruby 1.8 and Ruby 1.9, it will
# demonstrates how 'proc' works differently depending on which version
# you use.
#
# In Ruby 1.8 proc will create a lambda
# In Ruby 1.9 proc will create a Proc
#
# It is recommended not to use proc to create a proc or lambda, but instead
# use Proc.new (to create a proc) or lambda (to create a lambda) 

def foo
  my_proc = proc { return 'Behaves like a proc' }
  my_proc.call
  return 'Behaves like a lambda'
end

# This will output 'Behaves like a lambda' in Ruby 1.8
# This will output 'Behaves like a Proc' in Ruby 1.9 and above (as of April 2013) 
puts foo
