# == Schema Information
#
# Table name: movies
#
#  id         :bigint           not null, primary key
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_movies_on_created_at  (created_at)
#  index_movies_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :movie do
    association :user
    url { "https://www.youtube.com/watch?v=jNQXAC9IVRw" }
  end
end
