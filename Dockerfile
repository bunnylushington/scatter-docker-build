FROM bapi/scatter

MAINTAINER Kevin Montuori <montuori@bapi.us>

EXPOSE 9911 9912

ADD scatter /scatter

WORKDIR /scatter

RUN ./rebar3 update

ENTRYPOINT exec ./rebar3 shell --config config/dev.config


    
