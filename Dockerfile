FROM ubuntu@sha256:fa17826afb526a9fc7250e0fbcbfd18d03fe7a54849472f86879d8bf562c629e

RUN apt-get update; \
  apt-get install -y wget fontconfig libx11-6 libfontenc1 libjpeg-turbo8 libxext6 libxrender1 x11-common xfonts-75dpi xfonts-base xfonts-encodings xfonts-utils; \
  wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.focal_amd64.deb; \
  dpkg -i wkhtmltox_0.12.6-1.focal_amd64.deb
# can test using the following
# wkhtmltopdf https://google.com google.pdf
ENTRYPOINT ["wkhtmltopdf"]
