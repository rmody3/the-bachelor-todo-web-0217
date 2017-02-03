require "pry"

def get_first_name_of_season_winner(data, season)
  winner = ""
  data.each do |season_num, season_data|
    if season_num == season
      season_data.each do |contestant|
        if contestant["status"] == "Winner"
          winner = contestant["name"].split.first
        end
      end
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  name=""
  data.each do |season_num, season_data|
    season_data.each do |contestant|
      if contestant["occupation"] == occupation
        name = contestant["name"]
      end
    end
  end
  name
  # code here
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_num, season_data|
    season_data.each do |contestant|
      if contestant["hometown"] == hometown
        counter +=1
      end
    end
  end
  counter
end


def get_occupation(data, hometown)
  name =""
  data.each do |season_num, season_data|
    season_data.each do |contestant|
      if contestant["hometown"] == hometown
        name = contestant["occupation"]
        break
      end
    end
  end
  name
end

def get_average_age_for_season(data, season)
  ages = 0.0
  contestant_count = 0
  data.each do |season_num, season_data|
    if season_num == season
      contestant_count = season_data.length
      season_data.each do |contestant|
        ages += contestant["age"].to_f
      end
    end
  end
  average = (ages/contestant_count).round
  # code here
end
