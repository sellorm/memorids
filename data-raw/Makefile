.PHONY : all
all : adjectives.Rda nouns.Rda ../R/sysdata.Rda

adjectives.Rda : adjectives.txt create_Rda.R
	./clean_list.sh adjectives.txt
	./create_Rda.R adjectives.txt

nouns.Rda : nouns.txt create_Rda.R
	./clean_list.sh nouns.txt
	./create_Rda.R nouns.txt

../R/sysdata.Rda : adjectives.Rda nouns.Rda
	./create_sysdata.R

.PHONY : clean
clean :
	-rm *.Rda
	-rm ../R/sysdata.Rda
