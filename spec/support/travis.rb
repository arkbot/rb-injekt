def inside_travis?
  !!ENV.find { |key, _value| key =~ /TRAVIS/ }
end
