# SideInk Homebrew Tap

[SideInk](https://sideink.app/) 的官方 Homebrew tap —— 贴边悬浮的 macOS 待办 app。

## 安装

```sh
brew install --cask linleeeeee/sideink/sideink
```

第一次会自动添加 tap，之后直接装。也可以分两步：

```sh
brew tap linleeeeee/sideink
brew install --cask sideink
```

安装完成后，在「访达 → 应用程序」或聚焦（Spotlight）里打开 **SideInk** 即可。App 已用 Apple Developer ID 签名并公证，打开无 Gatekeeper 警告。

## 更新 / 卸载

```sh
brew upgrade --cask sideink     # 更新（App 本身也内置了自动更新）
brew uninstall --cask sideink   # 卸载
brew uninstall --zap --cask sideink   # 卸载并清除本地数据
```

## 说明

- 仅支持 **Apple 芯片（arm64）** Mac，macOS 11 Big Sur 及以上。
- 安装包来自公开发布仓库 [`linleeeeee/sideink-releases`](https://github.com/linleeeeee/sideink-releases/releases)。

## 维护者备忘：发新版本时

每次发布新 Release 后，更新 [`Casks/sideink.rb`](Casks/sideink.rb) 的两处并提交：

1. `version` 改成新版本号（cask 里的 URL 用 `v#{version}` 自动拼接）。
2. `sha256` 换成新 DMG 的哈希：

   ```sh
   VER=3.0.2   # 改成新版本号
   curl -fL -o /tmp/SideInk.dmg \
     "https://github.com/linleeeeee/sideink-releases/releases/download/v${VER}/SideInk-arm64.dmg"
   shasum -a 256 /tmp/SideInk.dmg
   ```

   然后 `git commit` + `git push`，用户 `brew upgrade` 即可拿到新版。
