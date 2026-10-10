# 舞台スケッチ 新LP — 下書きのプレビュー（スマホ確認用）

`stage-sketch-gamma/public-lp-v2/`（正本・iCloud）の下書きLPを、本人が外出先のスマホで見るために GitHub Pages に置いたもの。
**製品ではなく下書き。noindex。仮スクショ（冊子画像）入り。** リンク先・文言・画像は正本側で直し、`sync.sh` で複製して push する。

- 公開先: https://aratama-ship-it.github.io/stage-sketch-lp-preview/ （PC／スマホ並び: `compare.html`）
- GitHub: https://github.com/aratama-ship-it/stage-sketch-lp-preview （public・noindex）
- 作業木: iCloud `claude code files/show-creative-ideas/stage-sketch-lp-preview/`／管理領域: `~/git-repos/stage-sketch-lp-preview.git`（Mac mini。別 Mac では GitHub から clone）
- 正本・検証・トークンシート: `stage-sketch-gamma/public-lp-v2/README.md` と `stage-sketch-gamma/design/TOKEN_SHEET_public-lp-v2_2026-10-10.md`

## 更新のしかた
```sh
cd "/Users/arata/Library/Mobile Documents/com~apple~CloudDocs/claude code files/show-creative-ideas/stage-sketch-lp-preview"
bash sync.sh && git status --short
git add index.html compare.html media icons .nojekyll && git commit -m "..." && git push -u origin main
```
本公開（正式なLPの差し替え）はここではなく、`stage-sketch-gamma` の配信経路（build_public.py → Worker）と `PUBLISH_RULES.md` に従う。役目が終わったらこのリポジトリは消してよい。
