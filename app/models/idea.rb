class Idea < ActiveRecord::Base
    enum quality: [:swill, :plausible, :genious]
    default_scope -> {order(id: :desc)}
end
