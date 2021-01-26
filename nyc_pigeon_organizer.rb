def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |attribute, sub_attributes| # attributes should be keys
    sub_attributes.each do |sub_attribute, names| # sub_attributes should be strings
      names.each do |name|
        if !pigeon_list[name]
          pigeon_list[name] = {attribute => []}
        elsif !pigeon_list[name][attribute]
          pigeon_list[name][attribute] = []
        end
        pigeon_list[name][attribute].push(sub_attribute.to_s)
      end
    end
  end
  pigeon_list
end
