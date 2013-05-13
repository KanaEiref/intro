class Circle
  def initialize x, y, radius, options = {}
    @coordinate_system = options[:coordinate_sysem] || CartesianCoordinateSystem.new
    @x, @y, @radius = x, y, radius
  end

  def self.unit
    new 0, 0, 1
  end
end

unit_circle = Circle.unit
# unit_circle = Circle.new 0, 0, 1
