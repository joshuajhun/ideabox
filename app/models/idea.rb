class Idea < ActiveRecord::Base
    enum quality: [:swill, :plausible, :genious]
end
