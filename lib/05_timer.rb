def time_string(sec)
    sec = sec.round # pour éviter que les fractions de secondes ne s'additionnent et n'altèrent les secondes, les minutes et les heures.
    hours = sec / (60*60)
    minutes = (sec / 60) % 60 # l'opérateur modulo (%) donne le reste lorsque le côté gauche est divisé par le côté droit. Ex : 121 % 60 = 1
    seconds = sec % 60
    [hours, minutes, seconds].map do |t|
      # Justification à droite et remplissage avec 0 jusqu'à ce que la longueur soit de 2. 
      # Ainsi, si la durée de l'une des composantes temporelles est égale à 0, elle sera affichée sous la forme 00.
      t.round.to_s.rjust(2,'0')
    end.join(':')
end