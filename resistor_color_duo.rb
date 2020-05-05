class ResistorColorDuo
  COLOR_LIST = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white']
  def self.value(colors)
    colors[0..1].map{ |color| COLOR_LIST.index(color) }.join.to_i
  end
end
