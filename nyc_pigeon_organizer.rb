def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(outer, inner), hash|
    inner.each do |trait_key, names|
      names.each do |name|
        hash[name] ||= {} # new hash puts name as key
        hash[name][outer] ||= []
        hash[name][outer] << trait_key.to_s
      end
    end
  end
end