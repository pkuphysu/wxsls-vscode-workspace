# VSCode Dev Container Workspace

北京大学物院学生会微信公众号 VS Code + Docker 工作环境

参考文档：https://code.visualstudio.com/docs/remote/containers 及其他相关章节

## 开始

### 确保 Docker 正常

根据上述文档：

> - **Windows:** [Docker Desktop](https://www.docker.com/products/docker-desktop) 2.0+ on Windows 10 Pro/Enterprise. Windows 10 Home (2004+) requires Docker Desktop 2.3+ and the [WSL 2 back-end](https://aka.ms/vscode-remote/containers/docker-wsl2). (Docker Toolbox is not supported. Windows container images are not supported.)
> - **macOS**:  [Docker Desktop](https://www.docker.com/products/docker-desktop) 2.0+.
> - **Linux**: [Docker CE/EE](https://docs.docker.com/install/#supported-platforms) 18.06+ and [Docker Compose](https://docs.docker.com/compose/install) 1.21+. (The Ubuntu snap package is not supported.)

检查系统和 Docker 安装情况。

### 克隆 wxsls-pyfn 和 wxsls-page

在克隆下本仓库之后，需要在本仓库的根目录下克隆 wxsls-pyfn 和 wxsls-page

```sh
git clone git@github.com:pkuphysu/wxsls-pyfn
git clone git@github.com:pkuphysu/wxsls-page
```

之所以不用 submodules 管理，是因为 git 会一直追踪 submodule 的变化，就会陷入提交也不是不提交也不是的尴尬境地。

### 打开 Workspace

双击或使用 code 打开 `wxsls.code-workspace`，根据提示在容器中打开，等待容器构建完成。

注意观察扩展面板，Python 插件安装好后需要 reload VS Code 才能生效。

### 配置

安装  wxsls-pyfn 和 wxsls-page 的文档进行配置。注意数据库已经在容器中配置好了。

### Debug

在 Debug 面板中，选择 Compound 模式（一般是最后一项），点击开始之后就能运行。


## To Do

- [ ] Git Hook
- [ ] GPG Keys
- [ ] Configure Extensions
- [ ] More Tests
