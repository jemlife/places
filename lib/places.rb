class Places
  define_method(:initialize) do |places|
    @places = places
  end
  define_method(:description) do
    @places
  end
end
