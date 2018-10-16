module ApplicationHelper
    def starting_div_class
        date = Date.today - Date.today.day
    end

    def month_name
        Date::MONTHNAMES[Date.today.month]
    end


    def number_of_blank_days
        date = Date.today - Date.today.day
        # binding.pry
        date.cwday + 1 
        # to determine which day of week the first of the month falls on. except in october's case we get date.cwday + 1 is 8. if date.cwday = 7, then we want 1 (because first of october is monday and 1 corresponds to monday)
    end

    def add_empty_divs
        empty_divs = []
        number_of_blank_days.times do 
            empty_divs << "<div></div>"
        end
        #binding.pry
        empty_divs.join
    end

    
    def days_in_month
        m = Date.today.month 
        y = Date.today.year
        days = Time.days_in_month(m, y)
    end
end
