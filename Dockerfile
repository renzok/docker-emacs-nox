# emacs without X
#
# VERSION               0.0.1

FROM debian:latest

MAINTAINER Renzo Kottmann <rkottman@mpi-bremen.de>

RUN apt-get update && \
    apt-get install --assume-yes \
       emacs23-nox \
       emacs-goodies-el

# copying init file
COPY .emacs  /usr/local/share/emacs/site-lisp/emacs.el

CMD ["/usr/bin/emacs", "--no-splash", "--load", "/usr/local/share/emacs/site-lisp/emacs.el"]


