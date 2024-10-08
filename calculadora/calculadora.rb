require "tk"

root = TkRoot.new(title: "Calculator")

display = TkLabel.new(root) do
  text ""
  height 2
  width 32
  background "gray"
  grid(row: 0, column: 0, columnspan: 4)
end

current_value = display.cget('text')
temp_value = nil
OPERATION = {addition: "addition", subtraction: "subtraction", multiplication: "multiplication", division: "division"}
action = nil

seven_btn = TkButton.new(root) do
  text("7")
  grid(row: 1, column: 0)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', current_value.concat('7'))})
end
eight_btn = TkButton.new(root) do
  text("8")
  grid(row: 1, column: 1)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', current_value.concat('8'))})
end
nine_btn = TkButton.new(root) do
  text("9")
  grid(row: 1, column: 2)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', current_value.concat('9'))})
end
multiply_btn = TkButton.new(root) do
  text("X")
  grid(row: 1, column: 3)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {temp_value = current_value; display.configure('text', current_value = ''); action = OPERATION[:multiplication]})
end
four_btn = TkButton.new(root) do
  text("4")
  grid(row: 2, column: 0)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', current_value.concat('4'))})
end
five_btn = TkButton.new(root) do
  text("5")
  grid(row: 2, column: 1)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', current_value.concat('5'))})
end
six_btn = TkButton.new(root) do
  text("6")
  grid(row: 2, column: 2)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', current_value.concat('6'))})
end
minus_btn = TkButton.new(root) do
  text("-")
  grid(row: 2, column: 3)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {temp_value = current_value; display.configure('text', current_value = ''); action = OPERATION[:subtraction]})
end
one_btn = TkButton.new(root) do
  text("1")
  grid(row: 3, column: 0)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', current_value.concat('1'))})
end
two_btn = TkButton.new(root) do
  text("2")
  grid(row: 3, column: 1)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', current_value.concat('2'))})
end
three_btn = TkButton.new(root) do
  text("3")
  grid(row: 3, column: 2)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', current_value.concat('3'))})
end
plus_btn = TkButton.new(root) do
  text("+")
  grid(row: 3, column: 3)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {temp_value = current_value; display.configure('text', current_value = ''); action = OPERATION[:addition]})
end
neg_btn = TkButton.new(root) do
  text("+/-")
  grid(row: 4, column: 0)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', current_value.to_f * -1)})
end
zero_btn = TkButton.new(root) do
  text("0")
  grid(row: 4, column: 1)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', current_value.concat('0'))})
end
decimal_btn = TkButton.new(root) do
  text(".")
  grid(row: 4, column: 2)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', current_value.concat('.')) unless current_value.include?('.')})
end
equal_btn = TkButton.new(root) do
  text("=")
  grid(row: 4, column: 3)
  borderwidth 1
  padx 30
  pady 25
  command(
    lambda {
      case action
        when "addition"
          current_value = temp_value.to_f + current_value.to_f
          display.configure('text', current_value)
        when "subtraction"
          current_value = temp_value.to_f - current_value.to_f
          display.configure('text', current_value)
        when "multiplication"
          current_value = temp_value.to_f * current_value.to_f
          display.configure('text', current_value)
        when "division"
          current_value = temp_value.to_f / current_value.to_f
          display.configure('text', current_value)
      end
    })
end
divide_btn = TkButton.new(root) do
  text("/")
  grid(row: 5, column: 2)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {temp_value = current_value; display.configure('text', current_value = ''); action = OPERATION[:division]})
end
clear_btn = TkButton.new(root) do
  text("Clear")
  grid(row: 5, column: 3)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', current_value = '')})
end
Tk.mainloop