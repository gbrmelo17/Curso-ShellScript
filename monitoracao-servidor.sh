#!/bin/bash

resposta_http=$(curl --write-out %{http_code} --silent --output /dev/null http://localhost)
if [ $resposta_http -ne 200 ]
then
mail -s "PROBLEMA NO SERVIDOR" [gbrmelo17@gmail.com]@gmail.com<<del
Houve um problema no servidor e os usuarios perderam acesso ao conteudo Web.
del
	systemctl restart apache2
fi

