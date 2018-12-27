# MacOs 安装

## 系统要求

要安装并运行 Flutter，你的开发环境需要满足如下条件：

- 操作系统：macOS (64-bit)
- 硬盘空间：700MB，不包括 IDE
- 工具: Flutter 依赖下面这些命令行工具.
  - bash、mkdir、rm、git、curl、unzip、which

## 获取 Flutter SDK

1. flutter 官网下载最新可用的开发包 [Flutter SDK archive](https://flutter.io/docs/development/tools/sdk/archive?tab=macos)
2. 解压安装包到你想安装的目录，如：

```
 cd ~/development
 unzip ~/Downloads/flutter_macos_v1.0.0-stable.zip
```

3. 添加 flutter 相关工具到 path 中：

```
 export PATH=$PATH:`pwd`/flutter/bin
```

_这个命令仅设置了当前窗口的 PATH 变量，要想永久地设置 Flutter 到你的 path 中，参考下面的 **更新环境变量**_

## 运行 flutter doctor

```
flutter doctor
```

该命令检查你的环境并在命令行窗口中显示报告。Dart SDK 已经在打包在 Flutter SDK 里了，没有必要单独安装 Dart。 仔细检查命令行输出以获取可能需要安装的其他软件或进一步需要执行的任务。
例如：

```
[✓] Flutter (Channel stable, v1.0.0, on Mac OS X 10.13.6 17G65, locale
    zh-Hans-CN)
[✗] Android toolchain - develop for Android devices
    ✗ Unable to locate Android SDK.
      Install Android Studio from:
      https://developer.android.com/studio/index.html
      On first launch it will assist you in installing the Android SDK
      components.
      (or visit https://flutter.io/setup/#android-setup for detailed
      instructions).
      If Android SDK has been installed to a custom location, set $ANDROID_HOME
      to that location.
      You may also want to add it to your PATH environment variable.

[✓] iOS toolchain - develop for iOS devices (Xcode 10.0)
[!] Android Studio (not installed)
```

上面输出的内容会告诉你完成设置需要执行哪一些命令，当你安装完那些包之后 ，再次执行 `flutter doctor` 验证是否 ok。

## 更新环境变量

1. 确定 Flutter 软件包安装的位置
2. 打开或创建 `$HOME/.bash_profile`
3. 添加下面的内容

```
export PATH=$PATH:[PATH_TO_FLUTTER_GIT_DIRECTORY]/flutter/bin
```

_把 PATH_TO_FLUTTER_GIT_DIRECTORY] 改为你安装路径_

4. 执行下面命令，刷新当前窗口

```
source $HOME/.bash_profile
```

5. 验证 `flutter/bin` 是否在 `PATH` 变量中

```
echo $PATH
```

## 安装 Xcode

要为 iOS 开发 Flutter 应用程序，您需要 Xcode 9.0 或更高版本:

1. 安装 Xcode 9.0 或更新版本(通过 [网页下载](https://developer.apple.com/xcode/) 或 [苹果应用商店](https://itunes.apple.com/us/app/xcode/id497799835)).
2. 配置 Xcode 命令行工具以使用新安装的 Xcode 版本

```
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
```

3. 打开一次 Xcode 或者运行下面的命令来签署 Xcode 许可协议

```
sudo xcodebuild -license
```

## 参考资料

[MacOS install](https://flutter.io/docs/get-started/install/macos#update-your-path)
