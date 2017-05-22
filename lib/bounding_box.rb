class BoundingBox
  attr_reader :left, :right, :top, :bottom, :height, :width, :height
  def initialize(x_coord, y_coord, width, height)
    @width = width
    @height = height
    @left = x_coord
    @right = x_coord + width
    @top = y_coord + height
    @bottom = y_coord
  end

  def contains_point?(x, y)
    point_within = false
    if x <= @right && x >= @left && y <= @top && y >= @bottom
      point_within = true
    end
    point_within
  end
end
