class AttrAccessorObject
  def self.my_attr_accessor(*names)
    # ...
    names.each do |ivar|
      define_method(ivar) do
        instance_variable_get("@#{ivar}")
      end
    end

    names.each do |ivar|
        define_method("#{ivar}=") do |ele|
          instance_variable_set("@#{ivar}", ele)
        end
    end
      
  end
end
