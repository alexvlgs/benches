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
end
