class Image
  attr_accessor :rows
  
  def initialize (image_arrays)
    @rows = image_arrays
  end

  def transform (prev_row, curr_row, next_row)
    new_row = []

    curr_row.each_with_index do |val, ind|
      if val == 1
        new_row << 1
      elsif prev_row[ind] == 1
        new_row << 1
      elsif next_row[ind] == 1
        new_row << 1
      elsif curr_row[ind - 1] == 1 && ind - 1 != -1
        new_row << 1
      elsif curr_row[ind + 1] == 1
        new_row << 1
      else 
        new_row << 0
      end
    end
      return new_row
      
  end

  def working(rows) 
    final_array = []
  
    rows.each_with_index do |row, ind|
      prev_row = rows[ind - 1]
        #if index - 1 = -1 then []
        if ind - 1 == -1
          prev_row = []
        end
      next_row = rows[ind + 1]

        if ind + 1 >= rows.length
          next_row = []
        end
      new_row = self.transform(prev_row, row, next_row)             
                    #changed rows
    final_array << new_row
    end
    return final_array

  end
  def output
    self.working(@rows)
  end

  def blur(distance)
    #distance from user is the same number of the times 
    #we want the code to run
    #run the working method on @rows the first time, then store that 
    # result in a variable
    change = self.working(@rows)
    manhattan = self.working(change)
    #everytime we want it to run after the initial (2 or more)
    # we want the working method to work on that new variable 
    # instead of @rows
    return manhattan
#TIP: you do not have to touch anycode that is not in this blur method*

  end
end

image1 = Image.new([
[0, 0, 0, 0],
[0, 1, 0, 0],
[0, 0, 0, 1],
[0, 0, 0, 0]
])
image1.blur(3)

large_image = Image.new([
    [0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0],
    [0, 1, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 1]
])
puts "#{large_image}"
large_image.blur(5)
large_image.blur(7)

