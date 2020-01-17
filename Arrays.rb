class Image
def initialize 
  # insert array and variables
  @ary = [[0, 0, 0, 0],
        [0, 1, 0, 0],
        [0, 0, 0, 1],
        [0, 0, 0, 0]]
end

def output_image
  puts @ary
end


end
image = Image.new
image.output_image