FROM alpine

# Copy sources
COPY . /app

# Install required packages & build git-quick-stats
RUN     apk add --no-cache bash git make ncurses util-linux \
    &&  cd /app \
    &&  make install \
    &&  rm -rf /app \
    &&  apk del --no-cache make \
    &&  mkdir -p /usr/local/bin \
    &&  echo -en "#!/bin/bash\nset -e\n[[ \"\${1::1}\" == '-' ]] && set -- /usr/bin/git quick-stats \"\$@\"\nexec \"\$@\"" \
            > /usr/local/bin/docker-entrypoint \
    &&  chmod +x /usr/local/bin/docker-entrypoint

# Declare all variables usables by git-quick-stats
ENV _GIT_SINCE= \
    _GIT_UNTIL= \
    _GIT_LIMIT= \
    _GIT_PATHSPEC= \
    _MENU_THEME=default \
    TERM=xterm-256color

WORKDIR /git
ENTRYPOINT [ "/usr/local/bin/docker-entrypoint" ]
CMD [ "/usr/bin/git", "quick-stats" ]