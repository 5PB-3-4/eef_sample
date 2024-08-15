## patch.aulで読み込めるようになる拡張編集フィルタプラグインのサンプル
何もしない音声入力フィルタと音声フィルタ効果が追加されます。

## テスト環境
| name           | version    |
| ---            | ---        |
| AviUtl         | 1.10       |
| exedit         | 0.92       |
| patch.aul      | r43_ss_61  |
| MSYS2(MINGW32) | gcc-14.2.0 |

<br>

## ビルド
[aviutl_exedit_sdk](https://github.com/5PB-3-4/aviutl_exedit_sdk)と同じフォルダ内にダウンロードしてください。
![フォルダ](https://github.com/5PB-3-4/eef_sample/blob/image/folder_sample.PNG)

eef_sampleフォルダ内で、以下のコマンドで`eef_sample.eef`が生成されます。
```c++
mingw32-make all
```
生成された`eef_sample.eef`をaviutlの`plugins`フォルダ内に入れると認識すると思います。

<br>

## 参考
https://n099gl.gitlab.io/etc/mingw.html
