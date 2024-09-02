# String example
string_example = "Hello, World!"
puts string_example.class # String
# Integer example
integer_example = 42
puts integer_example.class # Integer
# Float example
float_example = 3.14
puts float_example.class # Float
# Numeric example
numeric_example = 10 + 20.5
puts numeric_example.class # Float (Numeric is the parent class)
# Rational example
rational_example = Rational(2, 3)
puts rational_example.class # Rational
# Complex example
complex_example = Complex(2, 3)
puts complex_example.class # Complex
# BigDecimal example
require 'bigdecimal'
bigdecimal_example = BigDecimal("10.123456789")
puts bigdecimal_example.class # BigDecimal
# NilClass example
nil_example = nil
puts nil_example.class # NilClass
# TrueClass example
true_example = true
puts true_example.class # TrueClass
# FalseClass example
false_example = false
puts false_example.class # FalseClass
# Array example
array_example = [1, 2, 3]
puts array_example.class # Array
# Hash example
hash_example = {a: 1, b: 2}
puts hash_example.class # Hash
# Set example
require 'set'
set_example = Set.new([1, 2, 3])
puts set_example.class # Set
# Set example - Handling collections with unique elements
require 'set'

set = Set.new([1, 2, 2, 3])
set.add(3) # No duplicates allowed
set.add(4)
puts set.to_a.inspect # [1, 2, 3, 4]

# Operations with sets
other_set = Set.new([3, 4, 5])
puts set.union(other_set).to_a.inspect    # [1, 2, 3, 4, 5]
puts set.intersection(other_set).to_a.inspect # [3, 4]

# Range example
range_example = 1..5
puts range_example.class # Range
# Struct example
Person = Struct.new(:name, :age)
struct_example = Person.new("John", 30)
puts struct_example.class # Struct
# IO example
io_example = IO.new(IO.sysopen("/dev/null", "w"))
puts io_example.class # IO
# IO example - Reading and writing to a file
filename = "example.txt"

# Writing to a file
File.open(filename, "w") do |file|
  file.puts "Hello, World!"
end

# Reading from a file
File.open(filename, "r") do |file|
  puts file.read # "Hello, World!"
end

# Clean up
File.delete(filename)

# File example
file_example = File.open("/dev/null", "r")
puts file_example.class # File
# Dir example
dir_example = Dir.new(".")
puts dir_example.class # Dir
# Time example
time_example = Time.now
puts time_example.class # Time
# Date example
require 'date'
date_example = Date.today
puts date_example.class # Date
# DateTime example
datetime_example = DateTime.now
puts datetime_example.class # DateTime
# Exception example
begin
  raise "An error"
rescue => e
  puts e.class # RuntimeError
end
# StandardError example
begin
  raise ArgumentError, "An argument error"
rescue StandardError => e
  puts e.class # ArgumentError
end
# Enumerator example
enumerator_example = [1, 2, 3].each
puts enumerator_example.class # Enumerator
# Enumerable example
enumerable_example = [1, 2, 3]
puts enumerable_example.is_a?(Enumerable) # true
# Regexp example
regexp_example = /[a-z]+/
puts regexp_example.class # Regexp
# MatchData example
matchdata_example = "hello".match(/[a-z]+/)
puts matchdata_example.class # MatchData
# Thread example
thread_example = Thread.new { sleep(1) }
puts thread_example.class # Thread

# Thread example - Running code in parallel threads
threads = 5.times.map do |i|
  Thread.new do
    sleep(rand(1..3))
    puts "Thread #{i} finished"
  end
end

threads.each(&:join)

# Mutex example
mutex_example = Mutex.new
puts mutex_example.class # Mutex
# Mutex example - Ensuring thread safety when accessing shared resources
mutex = Mutex.new
counter = 0

threads = 10.times.map do
  Thread.new do
    1000.times do
      mutex.synchronize do
        counter += 1
      end
    end
  end
end

threads.each(&:join)
puts counter # 10000

# Queue example
queue_example = Queue.new
puts queue_example.class # Queue
# Queue example - Thread-safe way to handle tasks
require 'thread'

queue = Queue.new

# Producer thread
producer = Thread.new do
  5.times do |i|
    sleep 1
    queue << i
    puts "Produced #{i}"
  end
end

# Consumer thread
consumer = Thread.new do
  5.times do
    value = queue.pop
    puts "Consumed #{value}"
  end
end

producer.join
consumer.join

# Process example
process_id = Process.pid
puts process_id.class # Integer (Process is a module)
# Signal example
Signal.trap("INT") { puts "Interrupted" }
puts Signal.class # Module
# ENV example
puts ENV.class # Object
# Proc example
proc_example = Proc.new { |x| x * 2 }
puts proc_example.class # Proc
# Lambda example
lambda_example = ->(x) { x * 2 }
puts lambda_example.class # Proc (Lambdas are a special type of Proc)
# Method example
method_example = "hello".method(:upcase)
puts method_example.class # Method
# Symbol example
symbol_example = :my_symbol
puts symbol_example.class # Symbol
# Object example
object_example = Object.new
puts object_example.class # Object
# BasicObject example
basic_object_example = BasicObject.new
puts basic_object_example.class # BasicObject