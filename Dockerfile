FROM sharelatex/sharelatex:6.3.0

RUN tlmgr update --self \
  && tlmgr update --all \
  && tlmgr install scheme-full
