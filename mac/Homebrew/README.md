# Homebrew

[Homebrew](https://brew.sh/index_zh-cn.html) 是一个很强大的包管理工具,让我们可以很方便的安装命令和软件.

## 安装

安装 Homebrew 必须安装 **Xcode Command Line Tools**.

安装命令

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

```

![](/resource/mac/Homebrew/0.png)

安装成功之后,测试一下.

```
brew doctor
```

![](/resource/mac/Homebrew/1.png)

---
**注:**

安装完成后，Homebrew 会将本地 `/usr/local` 初始化为 git 的工作树，并将目录所有者变更为当前所操作的用户，将来 `brew` 的相关操作不需要 sudo 。


