FROM node:lts-stretch
WORKDIR /screeps
RUN yarn add screeps

FROM node:lts-stretch
RUN mkdir /screeps_data && mkdir /screeps
VOLUME /screeps_data
WORKDIR /screeps
ENV DB_PATH=/screeps_data/db.json ASSET_DIR=/screeps_data/assets \
        MODFILE=/screeps_data/mods.json GAME_PORT=21025 \
        GAME_HOST=0.0.0.0 CLI_PORT=21026 CLI_HOST=0.0.0.0 \
        STORAGE_PORT=21027 STORAGE_HOST=localhost \
        DRIVER_MODULE="@screeps/driver"
COPY --from=0 /screeps /screeps

COPY "entrypoint.sh" /
EXPOSE 21025 21026 21027
ENTRYPOINT ["/entrypoint.sh"]

CMD ["run"]