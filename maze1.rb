# **************************
# *S* *                    *
# * * *  *  *************  *
# * *   *    ************  *
# *    *                   *
# ************** ***********
# *                        *
# ** ***********************
# *      *              G  *
# *  *      *********** *  *
# *    *        ******* *  *
# *       *                *
# **************************

class SolveMaze
  class Step
    def initialize(x, y)
      @x, @y = x, y
      @parent = nil
    end
    attr_accessor :x, :y, :parent
    
    [:up, :down, :left, :right].each_with_index do |mt, i|
      define_method(mt) do
        a = [Step.new(x, y - 1), Step.new(x, y + 1),
             Step.new(x - 1, y), Step.new(x + 1, y)][i]
        a.parent = self
        a
      end
    end
  end
  
  def initialize
    @map = readlines
  end
  
  def get(st)
    @map[st.y][st.x]
  end
  
  def set(st, ch)
    @map[st.y][st.x] = ch
  end
  
  def go
    stack = [Step.new(1, 1)]
    
    while (a = stack.shift)
      [a.up, a.down, a.left, a.right].each do |nxt|
        case get(nxt)
        when "G" then finish(a)
        when " "
          set(nxt, "@")
          stack.push(nxt)
        end
      end
    end
  end
  
  def finish(a)
    @map.map! {|x| x.gsub(/@/, " ")}
    while a.parent
      set(a, "0")
      a = a.parent
    end
    @map.each {|x| puts x}
    exit
  end
end

SolveMaze.new.go
