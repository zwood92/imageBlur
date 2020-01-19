class Image
  attr_accessor :array, :image
  def initialize(array)
    # insert array and variables
  @array = array
  # array = [image]
  end
  
  def output_image
    @array.each do |image|
      puts image.each { |p| p }.join(" ")
    end
  end

  def blur(d=1)
    d.times do 
      blur_init
    end
  end
      # image[1][1] yields image[0][1], image[1][0], image [1][2], image[2][1]
  
  
  

  private 
    def blur_init
      zero_blur = []
      @array.each_with_index do |row, i|
        row.each_with_index do |x, row_i|
          zero_blur << [i, row_i] if x ==1
        end
      end

      zero_blur.each do |y|
        @array[y[0]][y[1]+1] = 1 if y[1] + 1 <= @array[y[0]].length-1
        @array[y[0]][y[1] - 1] = 1 if y[1] - 1 >= 0
        @array[y[0] + 1][y[1]] = 1 if y[0] + 1 <= @array.length - 1
        @array[y[0] - 1][y[1]] = 1 if y[0] - 1 >= 0
      end
    end
end
  image = Image.new([
    [0, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 0, 1],
    [0, 0, 0, 0]
  ])
  image.blur(1)
  image.output_image