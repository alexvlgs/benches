module BenchHelper
  def avg_rating(bench)
    reviews = bench.reviews
    if reviews.any?
      sum = 0
      reviews.each do |r|
        sum += r.rating
      end
      sum / reviews.count
    else
      0
    end
  end

  def bench_image_tag(bench)
    if bench.photo.attached?
      cl_image_tag(bench.photo.key)
    else
      # cl_image_path('cocktail_placeholder')
      image_tag('bench placeholder.jpg')
    end
  end
end
