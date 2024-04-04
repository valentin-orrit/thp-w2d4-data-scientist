require_relative "./00b_journalists_db.rb"

def stringsNum(array) 
    puts "-" * 10
    puts "there are #{array.length} journalists in the database."
end


def shorteststring(array)
    puts "-" * 10
    min = array.min_by {|string| string.length}

    puts "the shortest handle is #{min}."
end


def fiveChar(array)
    puts "-" * 10
    newArray = array.map {|string| string.length}
    newArray.delete_if{|num| num > 4}

    puts "there are #{newArray.length} handle with 5 characters"
end


def startWithCap(array)
    puts "-" * 10
    newArray = array.map {|string| string[1] =~ /[A-Z]/}
    
    puts "there are #{newArray.count(0)} handles that start with a cap"
end


def alphabeticalSort(array)
    puts "-" * 10
    newArray = array.sort

    puts newArray[0, 10].inspect
end


def sizeSort(array)
    puts "-" * 10
    newArray = array.sort_by {|string| string.length}

    puts newArray[0, 10].inspect
end



def epenser(array)
    puts "-" * 10
    index = array.index("@epenser")

    puts "@epenser is at the index: #{index}" 
    puts "-" * 10
end 

# def sizeDistrib(array)
#     puts "-" * 10
#     #newArray = array.map {|string| string.length}
#     newArray = array.sort_by {|string| string.length}

#     newArray.each do |i|
#         if 
#             newArray[]
#         end
#     end 

#     puts newArray.inspect
# end

# 3 char = 1 / 32 char = 1

def output
    stringsNum($journalists)
    shorteststring($journalists)
    fiveChar($journalists)
    startWithCap($journalists)
    alphabeticalSort($journalists)
    sizeSort($journalists)
    epenser($journalists)
    #sizeDistrib($journalists)
end

output
