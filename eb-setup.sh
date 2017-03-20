#!/bin/bash
# 利用できるPlatform確認
# eb platform list --region=ap-northeast-1
# 
# 下記変数が事前に設定されてること前提で実行すること可能。
# SPRING_DATASOURCE_URL
# SPRING_DATASOURCE_USERNAME
# SPRING_DATASOURCE_PASSWORD
# SPRING_JPA_HIBERNATE_DDL_AUTO
# SPRING_JPA_DATABASE_PLATFORM
# SERVER_PORT
# 
#**AWSアクセスキー**
export AWS_ACCESS_KEY_ID=$1
#**AWSシークレットキー**
export AWS_SECRET_ACCESS_KEY=$2
# 環境に設定する環境変数
export ENVVARS=SPRING_DATASOURCE_URL=${SPRING_DATASOURCE_URL},SPRING_DATASOURCE_USERNAME=${SPRING_DATASOURCE_USERNAME},SPRING_DATASOURCE_PASSWORD=${SPRING_DATASOURCE_PASSWORD},SPRING_JPA_HIBERNATE_DDL_AUTO=${SPRING_JPA_HIBERNATE_DDL_AUTO},SPRING_JPA_DATABASE_PLATFORM=${SPRING_JPA_DATABASE_PLATFORM},SERVER_PORT=${SERVER_PORT}

# 作成するアプリケーションの名前
export APP_NAME=spring-boot-prototype
# 作成する環境の名前
export ENV_NAME=book-api
# 起動するインスタンスタイプ（もっと小さくても起動できますが、デプロイやプロビジョニングに時間がかかります）
export INSTANCE_TYPE=t2.micro
# インスタンスに設定されるキーペア
export KEY_PAIR_NAME=my-keypair-20161030
# 作成するアプリケーションの種類
export PLATFORM=java-8
# アクセスキーのプロファイル名
#export PROFILE="taro" # 使い方がよくわかってないのでコメントアウト
# 利用するリージョン
export REGION=ap-northeast-1

eb init ${APP_NAME} \
  --profile=${PROFILE} \
  --region=${REGION} \
  --keyname=${KEY_PAIR_NAME} \
  --platform=${PLATFORM}


eb create ${ENV_NAME} \
  --envvars=${ENVVARS} \
  --instance_type=${INSTANCE_TYPE}


