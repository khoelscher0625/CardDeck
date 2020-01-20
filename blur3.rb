#  create the new array
# determine starting_row where index - n == 0

#on starting_row:
# determine what index the 1 is at
# store that index as a constant(variable)

#call this change method:
#change index + 1 until index + 1 == index + n
#change index -1 until index - 1 == index - n
# put this into the new array

#change row (this should be a loop until row == n - n = 0)
# change index to 1
# call change method
#put this in the new array

class Manhattan
  attr_accessor :rows, :index

  def initialize (image)
    @rows = image
    @ones = []
    @rows.each_with_index do |row, index|
      row.each_with_index do |val, ind|
        if val == 1
         @ones << [index, ind]
        end
      end
  end
# n is the number the user will call method with, where do I state it?

  def change_index(curr_row, n)
    new_row = []

    curr_row.each_with_index do |val, index|
      if val == 1
        new_row << 1
      elsif curr_row[index - 1] 
        if index < n
          new_row << 1
          index == n - n = 0
      elsif curr_row[index + 1]
        while index < n
          new_row << 1
          break if index == n - n = 0
      else 
        new_row << 0
      return new_row
      end

    end
  end

    def change_row
     = []
    end

    def output
      final_array = []



    end




end