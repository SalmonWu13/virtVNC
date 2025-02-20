FROM quay.io/ongres/kubectl:latest
ADD static /static
CMD ["proxy", "--www=/static", "--accept-hosts=^.*$", "--address=[::]", "--api-prefix=/k8s/", "--www-prefix="]

