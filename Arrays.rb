class Image
attr_accessor :array, :image
def initialize(array)
  # insert array and variables
@array = array
array = [image]
end

def output_image
  @array.each do |image|
    puts image.each { |p| p }.join(" ")
  end
end

end
image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image