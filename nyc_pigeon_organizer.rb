def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(outer, inner), hash| # outer = colors
    inner.each do |trait_key, names| # [purple], [Theo, Peter]
      names.each do |name|
        hash[name] ||= {} # new hash puts name as key
        hash[name][outer] ||= []
        hash[name][outer] << trait_key.to_s # puts traits into array
      end
    end
  end
end