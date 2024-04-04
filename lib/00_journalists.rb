require_relative "./00b_journalists_db.rb"

def handlesNum (array) 
    puts "-" * 10
    puts "there are #{array.length} journalists in the database."
end


def shortestHandle (array)
    puts "-" * 10
    min = array.min_by {|handle| handle.length}

    puts "the shortest handle is #{min}."
end

def fiveChar (array)
    puts "-" * 10
    newArray = array.map {|handle| handle.length}
    newArray.delete_if{|num| num > 4}

    puts "there are #{newArray.length} handles with 5 characters"
end


def startWithCap(array)
    #array.select {|handle| ("A".."Z").include?(handle[1])}
    puts "-" * 10
    newArray = []

    array.each do |handle|
        newArray.push(handle[1] =~ /[A-Z]/)
    end 
    
    puts "there are #{newArray.count(0)} handles that start with a cap"
end
#epenser = 373

def alphabeticalOrder (array)


end



def output
    #handlesNum($journalists)
    #shortestHandle($journalists)
    #fiveChar($journalists)
    #startWithCap($journalists)
    alphabeticalOrder($journalists)
end

output
