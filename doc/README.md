<!-- ---
marp: true
--- -->

# 構成

- env ( maybe not required )
  - core
    - sub
  - lib
    - backend js
    - test js/python
    - server gleam

    - vsr
    - io
    - repleca

## バックエンド発表

5/24

### testcontainersなら

データのcreate/dropという前後処理含め自動

### 今までは、、

通常の自動テスト

- 以下が自動
  - テストデータの作成
  - モックサーバーの起動
  - テストの実行
  - テストデータの削除
  - モックサーバーの停止
  - テストの結果の確認

### 今までは、、

通常のリアルデータベースを使ったテスト

- 以下が手動
  - テストデータの作成
  - テストの実行
  - テストデータの削除
  - テストの結果の確認
  
### sqlcなら

各言語のSQLクエリ結果オブジェクトを生成できる
（静的型付け言語なら、型がつく）

### sqlcなら

ORMを使用する必要がない
＝
ORMで出力されるSQLを確認する必要がない

### sqlcなら

ウォーターフォールを強制できる

### sqlcなら

「結果パフォーマンスが悪かった」を未然に防げる
※これは一長一短

### EC2上にデプロイしたPostgresに接続したい

- SERVICE_BINDING値を
