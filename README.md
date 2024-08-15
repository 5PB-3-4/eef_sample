## patch.aulで読み込めるようになる拡張編集フィルタプラグインのサンプル
何もしない音声入力フィルタと音声フィルタ効果が追加されます

<br>

## ビルド
aviutl_exedit_sdkと同じフォルダ内に配置してください。
![フォルダー](https://github.com/5PB-3-4/eef_sample/blob/image/folder_sample.PNG)

eef_sampleフォルダ内で、以下のコマンドで`eef_sample.eef`が生成されます。
```c++
mingw32-make all
```
生成された`eef_sample.eef`をaviutlの`plugins`フォルダ内に入れると認識すると思います。

<br>

## 参考
https://n099gl.gitlab.io/etc/mingw.html
