#!/bin/bash

if [[ -z "$(getent passwd tome)" ]]; then
  adduser --disabled-password --gecos "" tome
fi
if [[ -z "$(getent passwd gabriel)" ]]; then
  adduser --disabled-password --home /users/gabriel --shell /bin/bash --gecos "" gabriel
fi

if [[ -z "$(getent passwd maria)" ]]; then
  adduser --disabled-password --gecos "" maria
fi

if [[ -z "$(getent passwd claudia)" ]]; then
  adduser --disabled-password --home /people/claudia --shell /bin/bash --gecos "" claudia
fi

if [[ -z "$(getent passwd bibiana)" ]]; then
  adduser --disabled-password --gecos "" bibiana
fi
