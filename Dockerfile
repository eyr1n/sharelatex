FROM sharelatex/sharelatex:6.3.0

RUN tlmgr update --self \
  && tlmgr update --all \
  && tlmgr install scheme-full

RUN --mount=type=bind,source=export-user-projects.mjs.patch,target=/tmp/export-user-projects.mjs.patch \
  patch -p1 -d /overleaf < /tmp/export-user-projects.mjs.patch
