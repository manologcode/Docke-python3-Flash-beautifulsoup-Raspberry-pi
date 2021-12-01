# Docker python3 con Flash y Beautifulsoup para rasberry pi

Contenedor docker ideal para correr apliaciones de scraping en Python. A un servidor o en una rapsberry pi, la imagen se compilada para las plataformas de linux/amd64,linux/arm64,linux/arm/v7.r

la imagen esta pensada para correr scrapers sobre la raspberrry pi que es el aparato ideal para estos menesteres, por su bajo consumo, le he incorporado flask porque siempre esta bien añadir un interface web para visualizar los procesos

partiendo de una imagen python:3.6-slim-stretch que compila en las dos arquitecturas le he instalado python3 y en el requiremet.txt  gunicorn,requests,flask, beautifulsoup4 se puede añadir mas librerias si se necesita y volver a construir la imagen.

para crear la imagen y subirla al repositorio

    docker build --no-cache --pull . -t manologcode/pyflascra3.6
    
    docker push manologcode/pypanflak3.9

para compilar las imagenes estoy usando una github action para que cree automaticamente la imagen en varias arquitecturas y docker buildx una funcion en desarrollo de docker.

## arrancar el contenedor

    docker run -it --rm --name=pyflascra -p 80:5000 -v $PWD/app:/app manologcode/pyflascra3.6 bash 
    

