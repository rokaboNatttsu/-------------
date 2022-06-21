##  パラメータの意味
N：ノミネートタイトル数

M：投票者数

L：投票者一人当たりのタイトル経験数スケール(目安)

K：一人当たりの投票権利数

LOGSCALE_RANGE：popularityの log(最大値/最小値) = LOGSCALE_RANGE

##  元データ
pd.read_csv("data.csv")
などで、データの入力を自力で書く必要がある。入力するデータvoter_dbの形式は、データ生成のセルの出力を参照


##  結果表のカラムの意味
id：体験のID

popularity：商品であれば、売上に該当する。サンプルの人物がその体験を経験する確率が、この値に比例する。

value ranking：体験の価値を表す変数。観測されない。

simple vote ranking：単純な得票数のランキング

corrected vote ranking：一人当たりの投票数をすべての投票者で一律に補正したときの、得票数のランキング

simple vote rate ranking：その経験をしたことがある投票者一人当たりの、その経験が得た得票数

professional ranking：経験が多い人の票が重く評価され、同時に、同じ人がした経験同士の相対的な得票差も評価されるランキング

professional ranking 2：professional rankingに、その経験をしたことがある投票者一人当たりの、その経験が得た得票数の評価も加えた評価のランキング
