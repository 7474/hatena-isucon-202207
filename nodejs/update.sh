#!/bin/bash

git pull
npm run build
sudo service isucondition.nodejs restart
