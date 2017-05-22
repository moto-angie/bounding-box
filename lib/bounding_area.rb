require_relative 'bounding_box'
class BoundingArea
attr_reader :boxes
  def initialize(bounding_area = [])
    @bounding_area = bounding_area
  end

  def boxes_contain_point?(point_1 = 0.0, point_2 = 0.0)
    contains = false
    @bounding_area.any? do |box|
      if box.contains_point?(point_1, point_2)
        contains = true
      else !box.contains_point?(point_1, point_2)
        contains = false
      end
    end
    contains
  end
  
end
