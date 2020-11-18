FactoryBot.define do
    factory :medicne do
    sequence(:name) { |n| "#{n}薬" }
    sequence(:type) { |n| "#{n}の薬" }
    end
end