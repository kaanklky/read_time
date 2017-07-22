require "read_time/version"

module ReadTime
  module String
    @@output = ""

    def seconds_to_read
    	(self.split(" ").count/3.3333333333).to_i    	
    end

    def minutes_to_read(secs)
    	if secs / 60 > 1
    		@@output << "#{secs / 60} minutes "
    	else
    		@@output << "1 minute "
    	end

    	if secs % 60 > 0
    		@@output << "#{secs % 60} seconds"
    	end  		
    end

    def hours_to_read(secs)
    	if secs / 3600 > 1
    		@@output << "#{secs / 3600} hours "
    	else
    		@@output << "1 hour "
   	  end
   	  
   	  if secs % 3600 > 0
   	  	minutes_to_read(secs % 3600)
   	  end
    end

    def time_to_read
    	if seconds_to_read <= 1
    		puts "1 second"
    	elsif seconds_to_read > 1 && seconds_to_read < 60
    		puts "#{seconds_to_read} seconds"
    	else
    		if secs > 3600
          hours_to_read(seconds_to_read)
    		else
    			minutes_to_read(seconds_to_read)
    		end
    		puts @@output
    	end
    end
  end
end

class String
  include ReadTime::String
end
