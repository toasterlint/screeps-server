FROM node:lts-stretch
VOLUME /screeps_data
WORKDIR /screeps_data
RUN yarn global add screeps
COPY "entrypoint.sh" /
EXPOSE 21025 21026 21027
ENTRYPOINT ["/entrypoint.sh"]

CMD ["run"]
