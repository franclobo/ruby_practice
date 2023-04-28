#Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.

#Each letter in magazine can only be used once in ransomNote.



#Example 1:

#Input: ransomNote = "a", magazine = "b"
#Output: false
#Example 2:

#Input: ransomNote = "aa", magazine = "ab"
#Output: false
#Example 3:

#Input: ransomNote = "aa", magazine = "aab"
#Output: true
# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  ransom_note.chars.each do |char|
    return false if magazine.count(char) < ransom_note.count(char)
  end
  true
end
