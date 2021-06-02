# nasem modelu dajemo ime Contact
class Contact
  # ukljucimo ponasanje ActiveModel klase, koja sadrzi validaciju i rukovodi greskama
include ActiveModel::Model
# atributi modela (data fields), atributi su jednaki poljima u formi
# attr_accessor je keyword koji koristimo da bismo formirali atribute ili polja podataka (data field)
# attr_accessor moramo da koristimo jer ne koristimo u ovoj app bazu podataka

#ako bismo koristili bazu onda bi Activerecord kreirao pristupne metode za citanje i pisanje atributa direktno iz baze
attr_accessor :name, :email, :content

# metode validacije obezbedjuje ActiveModel klasa
# validiramo, proveravamo da li postoje ime, email i poruka
validates_presence_of :name
validates_presence_of :email
validates_presence_of :content

# validiramo email format uz kompleksan regular expression
validates_format_of :email,
with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
# kazemo da poruka ne moze imati vise od 500 karaktera
validates_length_of :content, :maximum => 500
end
