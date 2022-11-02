# oracle

## 動作環境
- macOS v13.0
- Docker Engine v20.10.12
- Docker Desktop v4.12.0
- Oracle Database 19c Linux x86-64

## イメージのビルド
イメージのビルド方法は下記リンクのREADME.mdを参照すること。  
[Oracle Database container images](https://github.com/oracle/docker-images/blob/main/OracleDatabase/SingleInstance/README.md)

## コンテナの起動
1. 任意のディレクトリにリポジトリをチェックアウトする。
1. `./oracle/oracle-docker-compose/`に移動する。
1. `docker-compose.yml.sample`をもとに`docker-compose.yml`を作成する。
1. 作成した`docker-compose.yml`内の設定値を自環境に合わせて編集する。
1. `docker-compose up -d`のコマンドを実行する。
    - 初回起動には時間がかかるため、`docker logs -f oracle`のコマンドを実行して、経過を確認する。
    - 以下のように表示されたら、起動は成功
        ```
        Completed:    ALTER PLUGGABLE DATABASE SCHLPDB SAVE STATE
          
        XDB initialized.
        ```

## 初期データの登録
以下のSQLクライアントソフトウェアアプリケーションを使用して、初期データ`initial_data.sql`を登録できる。  
[DBeaver](https://dbeaver.io/)
