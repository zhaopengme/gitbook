# tensorflow

作为深度学习最强大的框架,推荐学习安装,建议使用 GPU 版本,跑起来的速度更快,用 CPU 版本会很痛苦的,下面安装也是 GPU 版本的说明.

官网: https://www.tensorflow.org/install/install_mac

查看一下自己的显卡是否支持 GPU 版本.

![](/_resource/mac/tensorflow/n_gpu_cc.png)


## 安装

### 安装 anaconda

anaconda是一个python 的发行版,里面集成了很多关于python科学计算的第三方库，主要是安装方便，而python是一个编译器，如果不使用anaconda，那么安装起来会比较痛苦，各个库之间的依赖性就很难连接的很好.

搜索一下

```
brew cask search anaconda
```

![](/_resource/mac/tensorflow/0.png)

安装

```
brew cask install anaconda
```

### 安装 CUDA Toolkit

CUDA Toolkit是 NVIDIA 提供的CUDA的SDK。 只要你安装了相应版本的显卡驱动,有Toolkit就可以开发CUDA程序了.

有可能不是最新版本,可以到 NVIDIA 官网手动安装最新版本.我们就使用 brew cask 提供的版本,目前的版本是8.

搜索

```
brew cask search cuda
```

安装

```
brew cask install cuda
```

![](/_resource/mac/tensorflow/1.jpg)

下载成功后自动开始安装

![](/_resource/mac/tensorflow/2.jpg)

安装成功

![](/_resource/mac/tensorflow/3.jpg)

### 安装 cuDNN

CuDNN是专门针对Deep Learning框架设计的一套GPU计算加速方案

搜索

```
brew cask search cuDNN
```

哈哈,这个是搜索不到的,需要手动下载.

目前最新版本是 5.1,下载 cuda8 对应的版本.

下载地址: https://developer.nvidia.com/rdp/cudnn-download

![](/_resource/mac/tensorflow/4.jpg)

安装

```
tar -zxvf cudnn-8.0-osx-x64-v5.1.tgz
cd cuda
sudo cp -Rf lib/* /usr/local/cuda/lib/
sudo cp include/cudnn.h /usr/local/cuda/include
```

配置一下环境变量

```
export CUDA_HOME=/usr/local/cuda
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$CUDA_HOME/lib"
export PATH="$CUDA_HOME/bin:$PATH"
```

## 安装 tensorflow

根据需要来安装对应的版本.

```
pip install --upgrade tensorflow      # for Python 2.7
pip3 install --upgrade tensorflow     # for Python 3.n
pip install --upgrade tensorflow-gpu  # for Python 2.7 and GPU
pip3 install --upgrade tensorflow-gpu # for Python 3.n and GPU
```

![](/_resource/mac/tensorflow/5.jpg)

安装成功

![](/_resource/mac/tensorflow/6.jpg)























