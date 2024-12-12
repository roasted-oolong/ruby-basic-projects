#The Object Model Exercise #1: Create an object
class emotion
end

happy = emotion.new

#The Object Model Exercise #2: Create module for class in exercise one
module emote(emote_sound)
end

class emotion
    include emote
end

happy = emotion.new