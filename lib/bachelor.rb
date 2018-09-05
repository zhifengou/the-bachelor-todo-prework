def get_first_name_of_season_winner(data, season)
  first_name=[]
  data[season].each do |value|
    first_name<< value["name"].split(" ")[0]
  end
  first_name[0]
end

def get_contestant_name(data, occupation)
  
  data.each do |season,value|
    value.each do |each|
    if each["occupation"]==occupation
     return each["name"]
    end
  end
end
end

def count_contestants_by_hometown(data, hometown)
  count=0
  data.each do |season,value|
    value.each do |each|
      if each["hometown"]==hometown
        count+=1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season,value|
    value.each do |each|
      if each["hometown"]==hometown
        return each["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  sum=0
  i=0
  data[season].each do |value|
   sum+=(value["age"].to_i)
   i+=1
  end
  avg=(sum.to_f/i).round
end
