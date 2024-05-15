class Pangram
    def self.is_pangram?(sentence)
      ('a'..'z').all? { |letter| sentence.downcase.include?(letter) }
    end
  end
  