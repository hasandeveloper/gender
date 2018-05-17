class Person < ApplicationRecord
    before_save :determine_gender

    def determine_gender
        response = HTTParty.get("https://gender-api.com/get?name=#{self.name}&key=tFawQzmmGMKEctzAhm")
        self.gender = response["gender"]
    end
end
