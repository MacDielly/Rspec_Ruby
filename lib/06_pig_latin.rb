# def translate(word) # OK, POUR 1
#     vowels = ["a", "e", "i", "o", "u"]
#     array = word.split
#     if !vowels.include?(array[0]) #array[0] != vowels
#         array << array.shift  # .rotate(1)
#     end
#     return array.join("") + "ay"
# end

# def translate(word) # OK POUR 1, 2
#     vowels = ["a", "e", "i", "o", "u"]
#     if !vowels.include?(word[0])             # Vérifie si la première lettre du mot n'est pas présente dans le tableau de voyelles "vowels" ("!" = inverse de)
#         word = word[1..-1] + word[0] + "ay"  # Si c'est le cas, déplace la première lettre à la fin du mot et ajoute "ay" à la fin
#     elsif !vowels.include?(word[0, 1])
#         word = word[2..-2] + word[0, 1] + "ay"
#     else
#         word = word + "ay"                   # Sinon ajoute simplement "ay" à la fin du mot
#     end
#     return word                              # Fin de la fonction, renvoie le mot modifié.
# end


# def translate(word) # OK POUR 1, 2, 3, 5, 6
#     vowels = ["a", "e", "i", "o", "u"]
#     i = 0
#     while !vowels.include?(word[i])
#         i += 1
#     end
#     word = word[i..-1] + word[0,i] + "ay"
#     return word
# end

def translate(phrase)
    vowels = ["a", "e", "i", "o", "u"]
    words = phrase.split(" ")  # Il sépare la phrase d'entrée en un tableau de mots en utilisant la fonction "split". Par défaut, cela sépare les mots en fonction des espaces.
    result = []                # Il définit un tableau vide qui stockera les mots transformés en pig latin.
    
    words.each do |word|       # Il utilise une boucle "each" pour parcourir chaque mot dans le tableau "words"
      if word[0..1] == "qu"
        word = word[2..-1] + word[0..1] + "ay"
      elsif word[0..2] == "sch"
        word = word[3..-1] + word[0..2] + "ay"
      elsif !vowels.include?(word[0]) && word[1..2] == "qu"  #  if !vowels.include?(word[0]) : Il vérifie si la première lettre du mot actuel n'est pas dans la liste des voyelles "vowels" en utilisant la méthode include?. Si c'est le cas, cela signifie que le mot commence par une consonne.
        word = word[3..-1] + word[0..2] + "ay"
      elsif !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])
        word = word[3..-1] + word[0..2] + "ay"
      elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
        word = word[2..-1] + word[0..1] + "ay"
      elsif !vowels.include?(word[0])
        word = word[1..-1] + word[0] + "ay"
      else
        word = word + "ay"
      end
      result << word
    end
    return result.join(" ")
    end