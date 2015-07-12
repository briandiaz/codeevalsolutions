class Bridge
  attr_reader :x1, :y1, :x2, :y2, :name
 
  def initialize(point_a,point_b,name)
    @x1 = point_a[0]
    @y1 = point_a[1]
    @x2 = point_b[0]
    @y2 = point_b[1]
    @name = name
  end
 
  def slope
    ((@y2 - @y1) / (@x2 - @x1)).to_f
  end
 
  def y_intercept
    (@y1 - (self.slope * @x1)).to_f
  end
 
  def to_s
    "#{name}"
  end
end
 
def generate_combinations(bridges)
  combos = [0,1].repeated_permutation(bridges.length).to_a
  result = []
  combos.each do |combo|
    set = []
    bridges.each_with_index do |bridge, i|
      if combo[i] == 1; set << bridge; end 
    end
    result << set
  end
  return result
end
 
def compare_combinations(combos)
  results = []
  combos.each do |combo|
    set = []
    combo.each_with_index do |a, i|
      combo.each_with_index do |b, j|
        if a != b && j > i && a != 0 && b != 0
          set << intersect?(a,b)
        end
      end
    end
    results << set
  end
  return results
end
 
def tally_combinations(list)
  count = []
  list.each do |item|
    t = 0; f = 0;
    item.each do |r|
      if r == true
        t += 1
      elsif r == false
        f += 1
      else
      end 
    end
    count << [t,f]
  end
  return count
end
 
def get_candidates(list)
  candidates = []
  list.each_with_index do |c,i|
    if c[0] == 0
      candidates << c
    else
      candidates << nil
    end
  end
  return candidates
end
 
def get_winning_combination(candidates,combos)
  leader = 0; winner = nil
  candidates.each_with_index do |candidate,i|
    if candidate != nil && candidate[1] > leader
       leader = candidate[1]
       winner = i
    end  
  end
  return combos[winner]
end
 
def intersect?(bridge1,bridge2)
  b1,b2 = bridge1, bridge2
  x = (b2.y_intercept - b1.y_intercept)/(b1.slope - b2.slope).to_f
  y = ((b1.slope * b2.y_intercept) - (b2.slope * b1.y_intercept))/(b1.slope - b2.slope).to_f
  x.between?(b1.x1,b1.x2) && 
  x.between?(b2.x1,b2.x2) && 
  y.between?(b1.y1,b1.y2) && 
  y.between?(b2.y1,b2.y2)
end
 
def output(winner)
  winner.each do |w|
    puts w 
  end
end
 
# driver code 
 
coordinates = []
 
File.open("test.txt", "r").each_line do |line|
  coordinates << line.match(/\(.+\)/)[0].gsub(/\(|\)|\n|\[|\]/, '').split(',').map { |s| s.to_f }.each_slice(2).to_a
end
 
bridges = []
coordinates.each_with_index do |c,i|
  bridges << Bridge.new(c[0],c[1],i+1)
end
 
combos = generate_combinations(bridges)
compared = compare_combinations(combos)
tallied = tally_combinations(compared)
candidates = get_candidates(tallied)
winner = get_winning_combination(candidates,combos)
output(winner)