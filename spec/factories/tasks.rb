FactoryBot.define do
  factory :task do
    name { "running" }
    is_done { false }
  end
end
