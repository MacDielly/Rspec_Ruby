def echo(answer)
    return answer
end


def shout(up_letters)
    return up_letters.upcase!
end


def repeat(hello, i=2)
    return hello + (" #{hello}" * (i-1))
    return hello + (" #{hello}" * i)
end


def start_of_word (string, number)
    return string[0, number]
end


def first_word(frst_wrd)
    return frst_wrd.split.first
end


def titleize(capital)
    cap_array= []                                   # Création du array "cap_array"
    exceptions = ["the","and", "for", "but", "nor"] # Création du array "exceptions" contenant les mots à ne pas transformer
    array = capital.split              # Création du array "array" (grace à .split) contenant tous les mots de chaque string (le caractere de separtion par défaut étant l'espace)
    cap_array << array[0].capitalize   # Injecte dans le array "cap_array" le premier mot de chaque string prenant obligatoirement une majuscule.

    for i in (1..(array.length-1)) do  #  la boucle va itérer (c'est-à-dire répéter) plusieurs fois, en utilisant une variable i qui prendra les valeurs suivantes : 1, 2, 3, 4, etc.
                                         # jusqu'à ce que i prenne la valeur array.length-1. array.length renvoie le nombre d'éléments dans le tableau array qui est crée par la fonction split,
                                         # et on retire 1 pour ne pas compter le premier mot qui a déjà été traité.
       if exceptions.include? array[i] # A chaque tour de boucle, la fonction vérifie si le mot array[i] (c'est-à-dire le ième mot de la chaîne d'entrée) est dans le tableau exceptions. Pour cela, elle utilise la méthode include? qui renvoie true si l'élément passé en paramètre est présent dans le tableau, et false sinon.
            cap_array << array[i]      # Si le mot est dans exceptions, il est ajouté tel quel dans le tableau cap_array (array[i] dans la boucle désigne le ième élément dans le tableau array)
        else
            cap_array << array[i].capitalize # Sinon, le mot est capitalisé (première lettre en majuscule) avec la méthode capitalize et est ajouté dans cap_array.
        end                            # La boucle se répète jusqu'à ce qu'elle ait parcouru tous les mots de la chaîne d'entrée sauf le premier.
    end                                # En résumé, cette boucle parcourt tous les mots de la chaîne d'entrée sauf le premier, vérifie si chaque mot est dans le tableau exceptions, si oui, il est ajouté tel quel dans cap_array, sinon il est capitalisé et ajouté dans cap_array.
    return cap_array.join(" ")         # cette ligne retourne le résultat final de la fonction en joignant tous les mots de cap_array en une seule chaîne de caractères séparées par des espaces.
end