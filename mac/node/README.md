# node

在当前 node 大放光彩的时代, node 必装. node 版本更新差异比较大,有时候需要多个版本的切换,我们使用`nvm`来管理 node 的版本.

## 安装 nvm

先搜索一下

```
brew search nvm
```

![](/_resource/mac/node/0.png)

安装

```
brew install nvm
```

![](/_resource/mac/node/1.png)

将下面的代码添加到 `~/.zshrc`

可以执行命令 `zshconfig` 快速编辑.

```
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
```

## 安装 node

- 查看本地安装的 node 版本

```
nvm list
```

- 查看所有的 node 版本

```
nvm ls-remote
```

- 安装

选择一个适合的版本来安装,当前的稳定版本是 **6.10.2**,最新版本是 **v7.8.0**.

我比较喜欢用新版本,就安装 **v7.8.0** 这个版本.

```
nvm install 7.8.0
```

- 将安装的版本设置为默认版本.

```
nvm use 7.8.0
nvm alias default 7.8.0
```

- 查看一下当前node的版本

```
node -v
```

- 升级一下 npm

```
npm install -g npm
```

- 查看 npm 的版本

```
npm --version
```




