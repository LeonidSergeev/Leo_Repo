select zuid, gender, age(birthday), location
from u
where (gender is not null OR location is not null OR age(birthday) is not null)
and is_registered = true
;