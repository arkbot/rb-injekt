def gem_bundled?(gem_name)
  Gem.loaded_specs.key?(gem_name)
end

def inside_travis?
  !!ENV.find { |key, _value| key =~ /TRAVIS/ }
end
