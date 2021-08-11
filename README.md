# UnisonUnum

Launch voicevox engine with container orchestration.

音声合成ソフトウェア「[VOICEVOX](https://voicevox.hiroshiba.jp/)」の関連ツールです。
当ソフトウェアの開発者は、VOICEVOXの作者様とは関係がありません。
また、公式や公認といったものではなく、あくまで第三者による勝手なものです。

__いまのところ研究開発の途中です。自由に使える状態になっていません。__

VOICEVOXを開発、活用、または連携するソフトウェアの開発を支援する目的で、こちらのソフトウェアを作成しています。

## 目的

以下は目指している目標であり、未実装です。

− VOICEVOX ENGINE を容易な手順で起動する方法を、提供する
− VOICEVOX ENGINE をDockerコンテナ化して、各種クラウド基盤で動作可能とする
− VOICEVOX ENGINE をクラスター（複数インスタンスを同時起動して分散処理する）可能として、可用性・応答性を高めることを目指す
− 開発中の VOICEVOX を、ビルドせずに起動する方法を、提供する

## 前提条件、環境

基本的には、中上級者向けです。
また、開発・研究目的での利用を念頭にしております。
大規模な利用や商用利用をするには、さらなる何かが追加で必要になると思われます。

Git、GitHub、Docker、コマンドラインでの操作といった技術を使いこなせる方向けです。
Windows（WSL2）、macOSで動かすことができるかもしれませんが、検証していません。

### 私の開発環境（一例）

Ubuntu 21.04
Docker 20.10.7
docker-compose 1.25.0
Node.js 14.17.4
npm 7.20.3
Python 3.9.5
pip 20.3.4
wine 5.0.3
git 2.30.2
vscode 1.57.1 (Flatpak)

## 命名の由来

ユニゾンとは、2名以上の声や楽器で、同じ音楽（旋律）を奏でることです。
Unison と Unum は、それぞれ英語とラテン語の表記になります。
読み方は、「ユニゾン−ウヌマ」でしょうか。

なお、VOICE と VOX はそれぞれ英語とラテン語で「声」を表す単語であり、それにちなんだ組み合わせ方を考えて、名付けました。

## Links

### VOICEVOX

- [VOICEVOX](https://voicevox.hiroshiba.jp/)
  - 音声合成ソフトウェア。デスクトップ・アプリケーション。Windows版バイナリ・パッケージを配布しています。
- [GitHub:VOICEVOX](https://github.com/Hiroshiba/voicevox)
  − VOICEVOX のGUI部分。オープンソース版。
- [GitHub:VOICEVOX ENGINE](https://github.com/Hiroshiba/voicevox_engine)
  − VOICEVOXの音声合成エンジン。オープンソース版。現状では、これ単独で動くソフトウェアをビルドできない。他のVOICEVOX関連ソフトウェと組み合わせて利用する。

VOICEVOX © 2021 Hiroshiba Kazuyuki

## Author / Contributors

- [GitHub:@isnot](https://github.com/isnot)

## ご支援

運営にあたって、当プロジェクトおよび作者は、ご支援を歓迎します。
GitHub Sponsorsを通じてご支援いただくことが可能です。ただしこれは、当プロジェクトの成果物を利用するための必須事項ではありません。
詳細は、お問い合わせください。

## 当リポジトリおよびそのコンテンツ全般に関して

ご意見やご感想、その他メッセージがありましたら、「Issues」か、「Discussions」までお寄せください。（基本的に公開されます。）
または私（[tw:@isnot](https://twitter.com/isnot49662340)）個人宛（TwitterのDM等）にお願します。

当サイトは、当該サービスを無保証で提供しており、当該サービスが原因で発生した損害等について、補償等は一切おこないません。
当サイトは、当該サービスを原因とする不具合があった場合でも、成果物に関する直接的なサポートを行いません。
当サイトのコンテンツは、予告なく変更、移転、削除等が行われることがあります。
